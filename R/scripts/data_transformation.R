library(dplyr)

# Function to transform data
transform_data <- function(df) {
  df %>%
    # Ensure date columns are in Date format
    mutate(Discharge.Date = as.Date(Discharge.Date),
           Date.of.Admission = as.Date(Date.of.Admission)) %>%
    # Calculate length of stay
    mutate(Length.of.Stay = as.integer(Discharge.Date - Date.of.Admission)) %>%
    # Create age groups
    mutate(Age.Group = cut(Age, breaks=c(0, 18, 35, 50, 65, 100),
                           labels=c('Child', 'Young Adult', 'Adult', 'Senior', 'Elderly'))) %>%
    return()
}

# Sample data loading (modify this part to load your actual data)
df_clean <- read.csv('/Users/abelshakespeare/Documents/GitHub/Cluster-Health-Dynamics-SQL-R-PowerBI/data/processed/cleaned_healthcare_dataset.csv')

# Transform data
df_transformed <- transform_data(df_clean)

# Save transformed data
write.csv(df_transformed, '/Users/abelshakespeare/Documents/GitHub/Cluster-Health-Dynamics-SQL-R-PowerBI/data/processed/transformed_healthcare_dataset.csv', row.names = FALSE)
