library(dplyr)
library(tidyr)
library(readr)
library(here)
library(stringr)
library(glue)
library(purrr)

# ------------------------------------------------------------
# 1. Get Git Username if available; fall back to OS username or unknown if not
# ------------------------------------------------------------

# Get reviewer name for front matter YAML. This is designed to work regardless
# of the existence of an .Rproj file. When an .Rproj file exists, RStudio will
# automatically set the working directory to the repo root. However, not all
# projects will necessarily have an .Rproj file. Originally, the BHN wiki
# project did not, and Quarto projects do not require this either. By coding
# this to work without an .Rproj file, the script should still work even if one
# is not present. Adding an .Rproj file is not harmful. This includes an
# ultimate fallback to "unknown" if neither git_name or os_user are resolvable
# to a name.
get_reviewer <- function() {
  git_name <- try(
    system(
      "git config user.name",
      intern = TRUE
    ),
    silent = TRUE
  )
  
  # Case 1: Git returned a valid string
  if (
    !inherits(
      git_name,
      "try-error"
    ) &&
    !is.null(
      git_name
    ) &&
    length(
      git_name
    ) == 1 &&
    !is.na(
      git_name
    ) &&
    nzchar(
      git_name
    )
  ) {
    return(
      git_name
    )
  }

  # Case 2: Fall back to OS username
  os_user <- Sys.info()[["user"]]
  if (
    !is.null(
      os_user
    ) && 
    nzchar(
      os_user
    )
  ) {
    return(
      os_user
    )
  }

  # Case 3: Absolute fallback
  return(
    "unknown"
  )
}

# Assign reviewer
reviewer <- get_reviewer()

# ------------------------------------------------------------
# 2. Script path + repo root detection (IDE-agnostic)
# ------------------------------------------------------------

# Get the script's own path
get_script_path <- function() {
  # Case 1: Running inside RStudio
  if (
    requireNamespace(
      "rstudioapi",
      quietly = TRUE
      ) &&
    rstudioapi::isAvailable()
    ) {
    p <- rstudioapi::getSourceEditorContext()$path
    if (
      !is.null(
        p
        ) && p != ""
      ) return(
        normalizePath(
          p
          )
        )
  }

  # Case 2: Running via Rscript
  args <- commandArgs(
    trailingOnly = FALSE
    )
  file_arg <- "--file="
  match <- grep(
    file_arg,
    args
    )
  if (
    length(
      match
      ) > 0
    ) {
    p <- sub(
      file_arg,
      "",
      args[match]
      )
    return(
      normalizePath(
        p
        )
      )
  }

  stop(
    "Unable to determine script path."
    )
}

# Walk upward until finding .git folder
find_repo_root <- function(
    start_dir
    ) {
  path <- normalizePath(
    start_dir,
    winslash = "/",
    mustWork = TRUE
    )

  while (
    TRUE
    ) {
    if (
      file.exists(
        file.path(
          path,
          ".git"
          )
        )
      ) {
      return(
        path
        )
    }

    parent <- dirname(
      path
      )
    if (
      parent == path
      ) {
      stop(
        "Could not find a .git folder in any parent directory."
        )
    }

    path <- parent
  }
}

# Assign script path to script_path
script_path <- get_script_path()

# Convert this path to a get the directory
script_dir  <- dirname(
  script_path
  )

# Find the root of the repo
repo_root <- find_repo_root(
  script_dir
  )

# ------------------------------------------------------------
# 3. Output directory
# ------------------------------------------------------------

# Establish the output directory for this script
output_dir <- file.path(
  repo_root,
  "docs",
  "wiki-architecture"
)

# ------------------------------------------------------------
# 4. Excel source
# ------------------------------------------------------------

# Load saved queries CSV
sq <- read_csv(
  "P:/DATA/DATA FILES/SAVEDQUERIES/savedqueries.csv"
  )

# ------------------------------------------------------------
# 5. Extract dependencies and generate Markdown
# ------------------------------------------------------------

# Build the front matter
front_matter <- glue::glue(
  "---
front-matter-title: Quick Report Dependencies
author: {reviewer}
last_updated: {format(Sys.Date(), '%Y-%m-%d')}
status: active
program_scope: none
programs:
  - none
tags:
  - report-metadata
  - dependencies
permalink: /quick-report-dependencies/
layout: home
nav_order: 1
parent: Wiki Architecture
reviewed-by:
  - name: {reviewer}
  - date: {format(Sys.Date(), '%Y-%m-%d')}
last_reviewed: {format(Sys.Date(), '%Y-%m-%d')}
schema_version: 1.0
---
"
)

# Function to extract dependencies from SQL text
extract_deps <- function(
    sql
    ) {
  # Handle NA or empty SQL
  if (
    is.na(
      sql
      ) || !nzchar(
        sql
        )
    ) {
    return(
      character(
        0
        )
      )
  }
  
  # Remove bracketed identifiers (column aliases, labels, etc.)
  sql_clean <- str_replace_all(
    sql,
    "\\[[^]]+\\]",
    " "
    )
  
  # Extract FROM/JOIN object names
  raw <- str_match_all(
    sql_clean,
    "(?i)(from|join)\\s+((?:[A-Za-z0-9_]+\\.){0,2}[A-Za-z0-9_]+)"
  )[[1]]
  
  # If no matches or not a matrix, return empty
  if (
    length(
      raw
      ) == 0 || !is.matrix(
        raw
        ) || nrow(
          raw
          ) == 0
    ) {
    return(
      character(
        0
        )
      )
  }
  
  # Extract object names from capture group 2
  objects <- raw[, 3]
  
  # Strip database/schema prefixes
  objects <- objects %>%
    str_remove(
      "(?i)^BEHAVHEALT_LIVE\\."
      ) %>%
    str_remove(
      "(?i)^DBO\\."
      ) %>%
    str_remove(
      "(?i)^dbo\\."
      )
  
  unique(
    toupper(
      objects
      )
  )
}

# Apply to each saved query and filter to reports matching the desired prefix
# patterns.
sq_deps <- sq %>%
  mutate(
    dependencies = map(
      QuerySQL,
      extract_deps
      )
  ) %>%
  unnest(
    dependencies
    ) %>%
  filter(
    str_detect(
      QueryName,
      "\\[Exception Reports|\\[Program Management|\\[R Child Doc Extracts|\\[Compliance Reports"
    )
  )

# Set top-level header to body
body <- "# Quick Report Dependencies\n\n"

sq_grouped <- sq_deps %>%
  mutate(
    category = str_extract(
      QueryName,
      "^\\[[^]]+\\]"
    )
  ) %>%
  group_by(
    category,
    QueryName
  ) %>%
  reframe(
    deps = list(
      sort(
        unique(
          dependencies
        )
      )
    )
  ) %>%
  mutate(
    report_title = str_remove(
      QueryName,
      paste0(
        "^\\[[^]]+\\]\\s*"
      )
    )
  ) %>%
  group_by(
    category
  ) %>%
  group_walk(~ {
    # Category header with exactly one blank line before and after
    body <<- paste0(
      body,
      "## ",
      .y$category,
      "\n\n"
    )

    purrr::walk2(
      .x$report_title,
      .x$deps,
      function(
    title,
    deps
    ) {
      # Report header with exactly one blank line before and after
      body <<- paste0(
        body,
        "### ",
        title,
        "\n\n",
        paste0(
          "- ",
          deps,
          collapse = "\n"
        ),
        "\n\n"
      )
    })
  })

full_md <- paste0(
  front_matter,
  "\n",
  body
)

# write file
output_path <- file.path(
  output_dir,
  "quick-report-dependencies.md"
)

# ------------------------------------------------------------
# 6. Normalize trailing whitespace: ensure exactly one blank line at EOF
# ------------------------------------------------------------

# Normalize trailing whitespace
full_md_lines <- unlist(
  strsplit(
    full_md,
    "\n",
    fixed = TRUE
  )
)

# Remove trailing empty lines
while(
  length(
    full_md_lines
  ) > 0 &&
  full_md_lines[length(full_md_lines)] == ""
) {
  full_md_lines <- full_md_lines[-length(full_md_lines)]
}

# Write file
writeLines(
  full_md_lines,
  output_path
)

message(
  glue(
    "Wrote: {output_path}"
  )
)
