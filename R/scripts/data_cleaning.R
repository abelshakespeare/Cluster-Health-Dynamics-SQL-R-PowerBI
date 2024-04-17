# Load necessary libraries
library(dplyr)
library(lubridate)

# Custom helper function to check and replace missing values
source('/Users/abelshakespeare/Documents/GitHub/Cluster-Health-Dynamics-SQL-R-PowerBI/R/functions/helper_functions.R')

# Function to clean data
clean_data <- function(df) {
  df %>%
    # Remove duplicates
    distinct() %>%
    # Convert dates to Date type
    mutate(Date.of.Admission = ymd(Date.of.Admission),
           Discharge.Date = ymd(Discharge.Date)) %>%
    # Handle missing values
    mutate_at(vars(Age, Gender, Blood.Type, Medical.Condition, Doctor, Hospital, Insurance.Provider, Billing.Amount, Room.Number, Admission.Type, Medication, Test.Results), 
              funs(replace_na_helper(., replacement = "Unknown"))) %>%
    # Additional cleaning can be added here
    return()
}

# Load data
df <- read.csv('/Users/abelshakespeare/Documents/GitHub/Cluster-Health-Dynamics-SQL-R-PowerBI/data/raw/healthcare_dataset.csv')

# Clean data
df_clean <- clean_data(df)

# Save cleaned data
write.csv(df_clean, '/Users/abelshakespeare/Documents/GitHub/Cluster-Health-Dynamics-SQL-R-PowerBI/data/processed/cleaned_healthcare_dataset.csv', row.names = FALSE)
