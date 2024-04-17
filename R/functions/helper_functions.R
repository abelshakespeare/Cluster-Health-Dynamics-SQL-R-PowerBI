# Function to replace NA values with a default value
replace_na_helper <- function(x, replacement = NA) {
  ifelse(is.na(x), replacement, x)
}
