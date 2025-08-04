# ---
# Title: Pivot Field Grouping Parser
# Status: Draft
# Tags: [parser, markdown, yaml, data dictionary]
# Last Updated: 2025-08-01
# Author: BHN Data Team
# Description: Parses YAML field groupings from Markdown documentation and returns a tidy tibble.
# ---

# Load necessary libraries
library(yaml)
library(dplyr)

# Copilot Pro suggested we consider a script to parse yaml blocks from data
# dictionary files to read a block and return a tibble table of hidden field
# groupings. See docs/data-dictionaries/epicc/table-initial-contact.md for an
# example yaml block for hidden fields that were pivoted using function
# updateReportFields().

# Read the Markdown file
md_lines <- readLines("epicc-initial-contact.md")

# Extract YAML block (assumes it's at the top or clearly delimited)
yaml_start <- which(md_lines == "```yaml") + 1
yaml_end <- which(md_lines == "```")[which(which(md_lines == "```") > yaml_start)][1] - 1
yaml_text <- paste(md_lines[yaml_start:yaml_end], collapse = "\n")

# Parse YAML
yaml_data <- yaml.load(yaml_text)

# Convert to tibble
groupings_df <- bind_rows(yaml_data$groupings)

# Clean and format
groupings_df <- groupings_df |>
  mutate(field = as.character(field)) |>
  select(field_id = field, group_label = label, pivot_count = pivots)

print(groupings_df)
