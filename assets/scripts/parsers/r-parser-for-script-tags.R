library(tidyverse)

# Function to extract tag block from a single file
extract_tags <- function(file_path) {
  lines <- readLines(file_path, warn = FALSE)
  
  # Find tag block boundaries
  start <- which(str_detect(lines, "^# ---"))[1]
  end   <- which(str_detect(lines, "^# ---"))[2]
  
  if (is.na(start) || is.na(end)) return(NULL)
  
  # Extract and clean tag lines
  tag_lines <- lines[(start + 1):(end - 1)]
  tag_df <- tibble(raw = tag_lines) %>%
    filter(str_detect(raw, "^#\\s")) %>%
    mutate(
      key = str_extract(raw, "(?<=#\\s)[^:]+"),
      value = str_trim(str_remove(raw, "^#\\s[^:]+:\\s*"))
    ) %>%
    pivot_wider(names_from = key, values_from = value)
  
  # Add filename for traceability
  tag_df <- tag_df %>% mutate(file = basename(file_path))
  
  return(tag_df)
}

# Apply to all scripts in folder
parse_script_tags <- function(folder = "assets/r-scripts/") {
  files <- list.files(folder, pattern = "\\.R$", full.names = TRUE)
  tag_list <- map(files, extract_tags)
  tag_df <- bind_rows(tag_list)
  
  # Optional: parse tags into list column
  tag_df <- tag_df %>%
    mutate(Tags = str_extract_all(Tags, "\\w+")) %>%
    relocate(file)
  
  return(tag_df)
}

# Example usage
script_index <- parse_script_tags()
print(script_index)
