# Cluster Health Dynamics: SQL, R, & PowerBI Analysis

## Overview
This project utilizes SQL, R, and PowerBI to analyze healthcare data to identify patterns and insights into health dynamics across different clusters. The goal is to provide actionable insights through detailed data analysis, leveraging the strengths of SQL for data management, R for data processing and analysis, and PowerBI for visualizing the results.

## Repository Structure
- **SQL**: Contains scripts for creating the database and tables, and for loading and managing data.
- **R**: Includes scripts for data cleaning, loading, transformation, and advanced analysis including clustering.
- **PowerBI**: Houses the PowerBI dashboard files that visualize the data analyzed by SQL and R scripts.
- **Docs**: Documentation related to project overview and data dictionaries.
- **Data**: Raw and processed datasets used and generated during the analyses.

## Technologies Used
- **SQL**
  - `create_database.sql`: Script to set up the database schema.
  - `input_data.sql`: Commands for loading data into the database from processed CSV files.
- **R**
  - **Functions**
    - `clustering.R`: Functions for performing hierarchical clustering on the data.
    - `helper_functions.R`: Includes helper functions like replacing NA values.
  - **Scripts**
    - `data_cleaning.R`: Script for cleaning the raw healthcare data.
    - `data_loading.R`: Script to load data from the database for analysis.
    - `data_transformation.R`: Transforms data to prepare for analysis and reporting.
- **PowerBI**
  - `Cluster-Dashboards.pbix`: PowerBI dashboard for visual data analysis and presentation.

## Setup and Running
1. **Database Setup**: Run the SQL scripts in the `sql` directory to create your database and tables, and to load your data.
2. **Data Processing**: Execute R scripts in the `R/scripts` directory for data cleaning, loading, and transformation.
3. **Data Analysis**: Utilize functions in `R/functions` to perform detailed data analysis.
4. **Visualization**: Open the PowerBI dashboard from the `powerbi/dashboards` directory to view and interact with the visualizations.
