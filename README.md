# Cluster Health Dynamics: SQL, R, & PowerBI

This repository is dedicated to a sophisticated analytics project aimed at uncovering relationships and clusters among various medical conditions within healthcare data. By leveraging the robust capabilities of SQL, R, and PowerBI, this project identifies significant correlations such as Asthma/Arthritis and Diabetes/Hypertension clustering, offering actionable insights for healthcare professionals and researchers.

## Introduction

The **Cluster Health Dynamics** project utilizes comprehensive datasets to explore the clustering of medical conditions. This analysis highlights significant medical conditions that often occur together, providing insights into potential underlying causes or influencing factors. This repository contains all the code and data used in our analysis, which leverages SQL for data management, R for statistical analysis and data processing, and PowerBI for dynamic visualizations.

## Technology Stack

### SQL

SQL stands at the core of our data architecture, providing a robust framework for data management and analytics. Our project utilizes advanced SQL operations to ensure efficient data handling and to support complex analytical queries that drive insights into health dynamics.

#### Key SQL Operations:
- **Database Schema Creation**: The foundation of our data management strategy involves constructing a well-defined schema that organizes extensive healthcare data into a coherent structure. This facilitates efficient data storage, retrieval, and manipulation.
- **Data Integrity and Transactions**: Employing transactions to maintain data integrity and ensure accurate results during simultaneous data operations.
- **Advanced Data Manipulation**: Leveraging SQL's powerful capabilities to perform sophisticated data transformations and aggregations. This includes writing complex queries that integrate data across multiple tables, enabling a nuanced analysis of patient demographics and medical conditions.

### R

R is utilized in this project for its excellent capabilities in data manipulation and statistical analysis. We use a suite of R packages to perform data cleaning, exploration, and clustering analysis, specifically focusing on identifying patterns within healthcare data.

#### R Packages Used:
- **readr**: For efficient data reading from CSV files, ensuring fast and reliable data input.
- **dplyr**: Employed extensively for data manipulation tasks such as filtering, summarizing, and arranging data, facilitating a streamlined workflow for data analysis.
- **lubridate**: Simplifies the management of date-times in R, which is crucial for handling the dates of medical records.
- **ggplot2**: For creating comprehensive and aesthetically pleasing visualizations. This package is essential for visually representing data findings and enhancing the interpretability of complex datasets.

#### Analytical Processes:
- **Data Cleaning**: Includes checking for null values, removing duplicates, and correcting data types to ensure the integrity of the analysis.
- **Exploratory Data Analysis (EDA)**: Utilizes various functions to explore and understand the distributions and relationships within the data. This includes generating descriptive statistics, identifying outliers, and creating visual plots such as histograms and boxplots to uncover patterns and insights.
- **Clustering Analysis**: Applies hierarchical clustering to identify and analyze clusters of medical conditions that frequently occur together. This analysis helps in understanding common co-occurrences in medical conditions, such as Asthma with Arthritis and Diabetes with Hypertension, providing valuable insights into potential shared causes or treatment approaches.

### PowerBI

PowerBI transforms our complex datasets into actionable insights through rich visualizations and interactive dashboards. It enables stakeholders to derive meaningful insights through an intuitive interface, enhancing decision-making processes.

#### Visualization Features:
- **Dynamic and Interactive Dashboards**: Tailored dashboards that allow users to drill down into specific datasets, providing a granular view of the healthcare landscape.
- **Advanced Analytics**: Integration of PowerBI with R scripts, enhancing the dashboards with advanced statistical analyses and predictive capabilities.
- **Real-time Data Processing**: Configuring PowerBI to handle real-time data feeds, ensuring that the dashboards always display the most current data.

These technologies are combined into a cohesive platform that not only supports sophisticated analytical tasks but also provides intuitive and accessible insights to healthcare professionals and policymakers. Our strategic use of SQL, R, and PowerBI ensures that we are at the forefront of analytical capabilities, driving advancements in healthcare analytics.


## Datasets

- **Healthcare Dataset**: Detailed patient records including demographics, medical conditions, treatment details, and outcomes.

## Repository Structure

- `data/`: Directories containing raw and processed datasets along with SQL scripts for database operations.
- `docs/`: Documentation including detailed project overview.
- `R/`: R scripts and functions for data cleaning, transformation, and clustering analysis.
- `powerbi/`: PowerBI dashboard files that visually represent data findings and trends.
- `sql/`: SQL scripts for database schema creation and data manipulation.
- `README.md`: This README file providing an overview of the project.
- `output`: Stored outputted R Data-Analysis (HTML).

## Key Findings

The analysis revealed distinct clusters of medical conditions, such as Asthma/Arthritis and Diabetes/Hypertension, which often occur together within the same patient groups.

## Installation and Usage

To set up the environment to run the scripts and interact with the dashboards, ensure that SQL Server, R, and PowerBI are properly installed and configured. Detailed instructions on setting up and running the analyses are provided within each script and function header comments.
