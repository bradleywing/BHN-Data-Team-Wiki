# Load required packages
library(readxl)     # for reading Excel
library(knitr)      # for kable()
library(here)       # for repo-relative paths
library(janitor)    # for snakecase file names
library(glue)       # for front matter
library(rstudioapi) # for script path detection (if in RStudio)
library(purrr)      # for map_chr

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
        ) &&
      p != ""
      ) 
      return(
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
  "famcare-master-tables",
  "master-tables"
  )

# Ensure destination folder exists
if (
  !dir.exists(
    output_dir
  )
) dir.create(
  output_dir,
  recursive = TRUE
)

# ------------------------------------------------------------ 
# 4. Excel source 
# ------------------------------------------------------------

# Path to the Excel workbook with master tables
excel_path <- "P:/DATA/LUTs/FC_Master_Tables.xlsx"

# Get all master table sheet names
sheets <- excel_sheets(
  excel_path
)

# ------------------------------------------------------------ 
# 5. Loop through sheets and generate Markdown 
# ------------------------------------------------------------

# Loop over sheets
for (
  sheet in sheets
) {
  # Read the sheet
  df <- read_excel(
    excel_path,
    sheet = sheet
  )
  
  # Define clean_name once 
  clean_name <- janitor::make_clean_names(
    sheet
    )
  
  # Convert the snake_case name to kebab-case name
  kebab_name <- gsub(
    "_",
    "-",
    clean_name
    )
  
  # Convert sheet name to snake_case for file naming
  file_name <- paste0(
    clean_name,
    ".md"
  )
  
  # Set the file_path
  file_path <- file.path(
    output_dir,
    file_name
  )

  # -------------------------------------------------------- 
  # Build front matter 
  # -------------------------------------------------------- 
  front_matter <- glue( 
"--- 
front-matter-title: {clean_name} Master Table
author: {reviewer}
last_updated: {format(Sys.Date(), '%Y-%m-%d')}
status: active
program_scope: none
programs:
  - none
tags:
  - sql-choice-table
  - master-table
  - lookup-metadata
permalink: /famcare-master-tables/{kebab_name}/
layout: home
nav_order: 1
parent: FamCare Master Tables 
reviewed-by: 
  - name: {reviewer} 
  - date: {format(Sys.Date(), '%Y-%m-%d')}
last_reviewed: {format(Sys.Date(), '%Y-%m-%d')}
schema_version: 1.0
---
"
    ) 
  
  # -------------------------------------------------------- 
  # Markdownlint-compliant top-level header 
  # -------------------------------------------------------- 
  header <- glue(
    "# {clean_name} Master Table\n\n"
    ) 
  
  # -------------------------------------------------------- 
  # Table 
  # -------------------------------------------------------- 
  md_table <- knitr::kable(
    df, 
    format = "pipe"
    ) 
  
  # -------------------------------------------------------- 
  # Write file 
  # --------------------------------------------------------
  
  # Write to file (overwrite each run)
  writeLines(
    c(
      front_matter,
      "",
      header,
      md_table
    ),
    file_path
  )
  
  message(
    glue(
      "Wrote: {file_path}"
      )
    )
}

# ------------------------------------------------------------ 
# 6. Update index.md with auto-generated list of master tables 
# ------------------------------------------------------------ 
index_path <- file.path(
  repo_root,
  "docs",
  "famcare-master-tables",
  "index.md"
  )

index_lines <- readLines(
  index_path
  )

start_marker <- grep(
  "BEGIN_AUTOGENERATED_MASTER_TABLES",
  index_lines
  )

end_marker <- grep(
  "END_AUTOGENERATED_MASTER_TABLES",
  index_lines
  )

if (
  length(
    start_marker
    ) == 0 || length(
      end_marker
      ) == 0
  ) {
  stop(
    "Markers for auto-generated master table list not found in index.md"
    )
  }

master_table_links <- map_chr(
  sheets,
  function(
    sheet
    ) {
    clean <- janitor::make_clean_names(
      sheet
      )
    kebab <- gsub(
      "_",
      "-",
      clean
      )
    glue(
      "- [{clean}](/famcare-master-tables/{kebab}/)"
      )
    }
  )

generated_block <- c(
  "<!-- BEGIN_AUTOGENERATED_MASTER_TABLES -->",
  master_table_links,
  "<!-- END_AUTOGENERATED_MASTER_TABLES -->" 
  )

new_index <- c(
  index_lines[1:(start_marker - 1)],
  generated_block,
  index_lines[(end_marker + 1):length(index_lines)] 
  )

writeLines(
  new_index,
  index_path
  )

message(
  "Updated index.md with master table list."
  )
