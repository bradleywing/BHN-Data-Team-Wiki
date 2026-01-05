# generate_form_data_dictionaries.R

library(readxl)
library(dplyr)
library(glue)
library(stringr)
library(knitr)
library(here)
library(purrr)

# -------------------------------------------------------------------
# 1. Paths and input metadata
# -------------------------------------------------------------------

base_path <- paste0(
  "C:/Users/",
  Sys.info()[["user"]],
  "/Behavioral Health Network of Greater St. Louis/BHN - Documents/Data Staging/Data Dictionaries/"
)

metadata_file <- file.path(base_path, "FC_Data_Dictionaries.xlsx")

fields         <- read_excel(metadata_file, sheet = "fields")
forms_meta     <- read_excel(metadata_file, sheet = "forms_meta")
forms_changes  <- read_excel(metadata_file, sheet = "forms_changelogs")

# -------------------------------------------------------------------
# 2. Helper functions
# -------------------------------------------------------------------

yn_from_flag <- function(x) {
  case_when(
    is.na(x)          ~ "",
    x %in% c(1, "1")  ~ "Yes",
    x %in% c(0, "0")  ~ "No",
    TRUE              ~ as.character(x)
  )
}

format_lov_md <- function(lov_string) {
  if (is.na(lov_string) || lov_string == "NA" || lov_string == "") return("")
  vals <- str_split(lov_string, ";")[[1]] |> trimws()
  paste0("- ", vals, collapse = "\n")
}

collapse_nonempty <- function(...) {
  parts <- list(...)
  parts <- parts[!vapply(parts, function(x) is.null(x) || x == "", logical(1))]
  if (length(parts) == 0) return("")
  paste(parts, collapse = "\n\n")
}

safe_val <- function(df, col) {
  if (col %in% names(df)) df[[col]] else ""
}

build_front_matter <- function(form_meta_row) {

  tags_vec <- if (!is.na(form_meta_row$tags) && form_meta_row$tags != "") {
    str_split(form_meta_row$tags, ";")[[1]] |> trimws()
  } else {
    c("data-dictionary", "documentation", form_meta_row$form_id)
  }

  tags_yaml <- paste0("  - ", tags_vec, collapse = "\n")

  if (!is.na(form_meta_row$master_tables) && form_meta_row$master_tables != "") {
    mt_vec  <- str_split(form_meta_row$master_tables, ";")[[1]] |> trimws()
    mt_yaml <- paste0("  - ", mt_vec, collapse = "\n")
    mt_block <- glue("master_tables:\n{mt_yaml}")
  } else {
    mt_block <- ""
  }

  glue(
"---
front-matter-title: {form_meta_row$front_matter_title}
permalink: {form_meta_row$permalink}
layout: {form_meta_row$layout}
parent: {form_meta_row$parent}
nav_order: {form_meta_row$nav_order}
tags:
{tags_yaml}
{mt_block}
schema_version: {form_meta_row$schema_version}
---"
  )
}

# -------------------------------------------------------------------
# 3. Main rendering for a single form
# -------------------------------------------------------------------

render_form_markdown <- function(form_id_target) {

  form_meta <- forms_meta %>% filter(form_id == form_id_target)

  if (nrow(form_meta) == 0) {
    message(glue("Skipping '{form_id_target}' — no metadata found."))
    return(invisible(NULL))
  }

  form_meta <- form_meta[1, ]
  program <- form_meta$program

  form_fields <- fields %>%
    filter(form_id == form_id_target) %>%
    arrange(form_order, field_order)

  if (nrow(form_fields) == 0) {
    message(glue("Skipping '{form_id_target}' — no fields defined yet."))
    return(invisible(NULL))
  }

  form_changes <- forms_changes %>%
    filter(form_id == form_id_target)

  fm_yaml <- build_front_matter(form_meta)

  # -------------------------------------------------------------------
  # Core Fields table
  # -------------------------------------------------------------------

  core_fields <- form_fields %>%
    filter(is_pivot_field %in% c(0, NA)) %>%
    mutate(
      Hidden      = yn_from_flag(is_hidden_field),
      MasterTable = ifelse(!is.na(master_table_name) & master_table_name != "NA",
                           master_table_name, ""),
      Required    = yn_from_flag(is_required_field),
      Reporting   = yn_from_flag(is_reporting_field),
      System      = yn_from_flag(is_system_field),
      Enabled     = yn_from_flag(is_enabled_field),
      Analytical  = yn_from_flag(is_analytical_field)
    ) %>%
    select(
      `Field Order` = field_order,
      `FC Field Prompt` = fc_field_prompt,
      `FC Field Name` = fc_field_name,
      Hidden,
      `Master Table` = MasterTable,
      Required,
      Reporting,
      System,
      Enabled,
      Analytical
    )

  core_fields_table_md <- knitr::kable(core_fields, format = "pipe", align = "c")

  # -------------------------------------------------------------------
  # Core Field Details
  # -------------------------------------------------------------------

  core_details_md <- purrr::map_chr(seq_len(nrow(core_fields)), function(i) {

    f_name <- core_fields$`FC Field Name`[i]
    ff <- form_fields %>% filter(fc_field_name == f_name)

    if (nrow(ff) == 0) {
      warning(glue("No metadata found for fc_field_name = '{f_name}'"))
      return("")
    }

    ff <- ff %>% slice(1)

    lov_block <- ""
    if (!is.na(ff$enabled_lov_values) && ff$enabled_lov_values != "NA") {
      lov_items <- format_lov_md(ff$enabled_lov_values)
      lov_block <- glue("**LOV:**\n\n{lov_items}")
    }

    conditional_block <- ""
    if (!is.na(ff$conditional_logic) && ff$conditional_logic != "NA" && ff$conditional_logic != "") {
      conditional_block <- glue("**Conditional Logic:**\n\n- {ff$conditional_logic}")
    }

    audit_block <- ""
    if (!is.na(ff$audit_notes) && ff$audit_notes != "NA" && ff$audit_notes != "") {
      notes_vec <- str_split(ff$audit_notes, ";")[[1]] |> trimws()
      audit_items <- paste0("- ", notes_vec, collapse = "\n")
      audit_block <- glue("**Audit Notes:**\n\n{audit_items}")
    }

    mt_block <- ""
    if (!is.na(ff$master_table_name) && ff$master_table_name != "NA" && ff$master_table_name != "") {
      mt_block <- glue("**Master Table:** {ff$master_table_name}")
    }

    type_block <- glue(
"**Data Type:** {ff$data_type}  
**Question Type:** {ff$question_type}  
**Variable Name:** {ff$variable_name}"
    )

    body <- collapse_nonempty(
      type_block,
      mt_block,
      lov_block,
      conditional_block,
      audit_block
    )

    glue(
"<details markdown=\"1\">
<summary><strong>{ff$field_order} - {ff$fc_field_name}</strong></summary>

**Field Prompt:** {ff$fc_field_prompt}
{body}

</details>"
    )
  }) |> paste(collapse = "\n\n")

  # -------------------------------------------------------------------
  # Pivoted Fields table (redesigned)
  # -------------------------------------------------------------------

  pivot_fields <- form_fields %>%
    filter(is_pivot_field == 1) %>%
    mutate(
      ParentField = pivot_parent,
      PopulatedWhen = conditional_logic,
      Values = enabled_lov_values,
      Notes = ifelse(is.na(audit_notes) | audit_notes == "NA", "", audit_notes)
    ) %>%
    select(
      `Field Order` = field_order,
      `FC Field Name` = fc_field_name,
      `Parent Field` = ParentField,
      `Populated When` = PopulatedWhen,
      Values,
      Notes
    )

  pivot_table_md <- if (nrow(pivot_fields) > 0) {
    knitr::kable(pivot_fields, format = "pipe", align = "c")
  } else {
    "_No pivoted fields defined for this form._"
  }

  # -------------------------------------------------------------------
  # Changelog (year-grouped, nested <details>)
  # -------------------------------------------------------------------

  changelog_md <- ""
  if (nrow(form_changes) > 0) {

    form_changes <- form_changes %>%
      arrange(
        desc(
          change_date # newest to oldest
        )
      ) %>% 
      mutate(
        year = format(
          as.Date(
            change_date
            ),
          "%Y"
          )
        )

    changes_by_year <- split(
      form_changes,
      form_changes$year
      )

    # reverse year order so newest year appears first
    year_blocks <- purrr::map_chr(
      rev(
        names(
          changes_by_year
        )
      ),
      function(
    yr
    ) {
      df <- changes_by_year[[yr]]

      bullets <- paste0(
        "- **",
        df$change_date,
        "**: ",
        df$change_detail,
        collapse = "\n"
      )

      glue(
"<details markdown=\"1\">
<summary><strong>{yr}</strong></summary>

### {yr}

{bullets}

</details>"
      )
    }
  )

    changelog_md <- glue(
"## Changelog

<details markdown=\"1\">
<summary><strong>View Changelog Details</strong></summary>

{paste(year_blocks, collapse = \"\n\n\")}

</details>"
    )
  } else {
    # Stub changelog for forms with no entries
    changelog_md <- glue(
"## Chagnelog

_No changes recorded._"
    )
  }

  # -------------------------------------------------------------------
  # Assemble full Markdown
  # -------------------------------------------------------------------

  form_title <- form_meta$front_matter_title %||% form_meta$form_label %||% form_id_target

  md_sections <- c(
    fm_yaml,
    glue("# {form_title}"),
    "",
    "## Core Fields",
    "",
    "<details markdown=\"1\">",
    "<summary><strong>Click to expand Core Fields</strong></summary>",
    "",
    core_fields_table_md,
    "",
    "</details>",
    "",
    "## Core Field Details",
    "",
    "<details markdown=\"1\">",
    "<summary><strong>Click to expand Core Field Details</strong></summary>",
    "",
    core_details_md,
    "",
    "</details>",
    "",
    "## Pivoted Fields (Hidden)",
    "",
    "<details markdown=\"1\">",
    "<summary><strong>Click to expand Pivoted Rows</strong></summary>",
    "",
    pivot_table_md,
    "",
    "</details>",
    "",
    changelog_md
  )

  markdown_output <- paste(md_sections, collapse = "\n")

  # -------------------------------------------------------------------
  # Write to correct wiki folder
  # -------------------------------------------------------------------

  repo_base <- here("docs", "data-dictionaries")
  program_folder <- file.path(repo_base, paste0(program, "-data-dictionaries"))

  if (!dir.exists(program_folder)) {
    dir.create(program_folder, recursive = TRUE)
  }

  file_name <- paste0(gsub("_", "-", form_id_target), ".md")
  output_path <- file.path(program_folder, file_name)

  writeLines(markdown_output, output_path)

  message(glue("Wrote: {output_path}"))
}

`%||%` <- function(x, y) if (!is.null(x) && !all(is.na(x))) x else y

# -------------------------------------------------------------------
# 4. Driver
# -------------------------------------------------------------------

all_forms <- unique(forms_meta$form_id)

purrr::walk(all_forms, render_form_markdown)

# -------------------------------------------------------------------
# 5. Auto-generate index.md files for each program data dictionary subfolder.
# -------------------------------------------------------------------

# Base folder for all data dictionaries
repo_base <- here(
  "docs",
  "data_dictionaries"
  )

# Group forms by program
forms_by_program <- forms_meta %>%
  filter(
    !is.na(
      program
      ) & program != ""
    ) %>%
  mutate(
    kebab = gsub(
      "_",
       "-",
      form_id
      ),
    link  = glue(
      "- [{front_matter_title}](/data-dictionaries/{program}-data-dictionaries/{kebab}/)"
      )
  ) %>%
  group_by(
    program
    )


forms_by_program %>%
 group_walk(
  function(
    df,
    key
    ) {

  program <- key$program
  program_folder <- file.path(
    repo_base,
    paste0(
      program,
      "-data-dictionaries"
      )
    )

  # Ensure folder exists
  if (
    !dir.exists(
      program_folder
      )
    ) {
    dir.create(
      program_folder,
      recursive = TRUE
      )
  }

  # ------------------------------------------------------------
  # YAML front matter 
  # ------------------------------------------------------------
  fm_yaml <- glue(
"---
front-matter-title: {toupper(program)} Data Dictionaries
layout: home
permalink: /data-dictionaries/{program}-data-dictionaries/
nav_order: 1
parent: BHN Program Data Dictionaries
---"
  )
  
  # ------------------------------------------------------------
  # Header + link list 
  # ------------------------------------------------------------
  header <- glue(
    "# {toupper(program)} Data Dictionaries"
    )
  
  links <- paste(
    df$link,
    collapse = "\n"
    )

# ------------------------------------------------------------
# Program-level changelog (change_scope == 'program')
# ------------------------------------------------------------
  program_changes <- forms_changes %>%
    filter(
      change_scope == "program",
      program == !!program
    )
  if (
    nrow(
      program_changes
    ) > 0
  ) {
    program_changes <- program_changes %>%
      arrange(
        desc(
          change_date
        )
      ) %>%
      mutate(
        year = format(
          as.Date(
            change_date
          ),
          "%Y"
        )
      )
    changes_by_year <- split(
      program_changes,
      program_changes$year
    )
    year_blocks <- purrr::map_chr(
      rev(
        names(
          changes_by_year
        )
      ),
      function(
    yr
      ) {
        dfyr <- changes_by_year[[yr]]
        bullets <- paste0(
          "- **",
          dfyr$change_date,
          "**: ",
          dfyr$change_detail,
          collapse = "\n"
        )
        glue(
"<details markdown=\"1\">
<summary><strong>{yr}</strong></summary>

### {yr}

{bullets}

</details>"
        )
      }
    )
    changelog_md <- glue(
"## Changelog

<details markdown=\"1\">
<summary><strong>View Changelog Details</strong></summary>

{paste(year_blocks, collapse = \"\n\n\")}

</details>"
    )
  } else {
      changelog_md <- glue(
"## Changelog

_No changes recorded._"
    )
  }
  
# ------------------------------------------------------------
# Assemble full Markdown
# ------------------------------------------------------------
  new_text <- paste(
    c(
      fm_yaml,
      "",
      header,
      "",
      "## Available Data Dictionaries",
      "",
      links,
      "",
      changelog_md
      ),
    collapse = "\n"
    )

# ------------------------------------------------------------
# Normalize trailing whitespace
# ------------------------------------------------------------
  lines <- unlist(
    strsplit(
      new_text,
      "\n",
      fixed = TRUE
      )
    )
  while (
    length(
      lines
      ) > 0 && lines[length(lines)] == ""
    ) {
    lines <- lines[-length(lines)]
    }

# writeLines() adds exactly one newline
  index_path <- file.path(
    program_folder,
    "index.md"
    )

# ------------------------------------------------------------ 
# Content-aware write
# ------------------------------------------------------------
  if (
    file.exists(
      index_path
      )
    ) {
    old <- readLines(
      index_path,
      warn = FALSE
      )
    if (
      identical(
        old,
        lines
        )
      )
    { 
      message(
        glue(
          "No content change — skipping write: {index_path}"
          )
        )
      return() 
      }
    }
  writeLines(
    lines,
    index_path
    )
  message(
    glue(
      "Updated program index: {index_path}"
      )
    )
  }
)
