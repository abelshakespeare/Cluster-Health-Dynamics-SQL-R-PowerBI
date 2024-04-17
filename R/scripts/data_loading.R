# Load necessary libraries
library(DBI)
library(RPostgreSQL)

# Set up database connection using RPostgreSQL
setup_connection <- function() {
  # Provide the connection details
  drv <- dbDriver("PostgreSQL")
  con <- dbConnect(drv, dbname = "postgres",
                   host = "localhost", port = 5432,
                   user = "abelshakespeare", password = "")
  return(con)
}

# Function to load data from the database
load_data <- function(con, query) {
  dbGetQuery(con, query)
}

# Connect to the database
con <- setup_connection()

# Example query to load specific data
query <- "SELECT * FROM patients WHERE medicalcondition = 'Asthma';"
df_loaded <- load_data(con, query)

# Optionally, save to CSV for further use
write.csv(df_loaded, '/Users/abelshakespeare/Documents/GitHub/Cluster-Health-Dynamics-SQL-R-PowerBI/data/processed/loaded_healthcare_data.csv', row.names = FALSE)

# Close the database connection
dbDisconnect(con)
