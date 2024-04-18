## RUN ONLY WITHIN POWERBI

# Load necessary libraries 
library(readr)  # For reading CSV files
library(stats)  # For clustering

# Load the dataset
df <- dataset

# Encode the 'Medical.Condition' as a numeric factor if it's not already
df$Medical_Condition_Encoded <- as.numeric(factor(df$Medical.Condition))

# Perform hierarchical clustering
hc <- hclust(dist(df$Medical_Condition_Encoded), method = "ward.D2")

# Cut the dendrogram to create clusters
cluster_labels <- cutree(hc, h = 50)

# Assign cluster labels to the dataframe
df$Cluster <- cluster_labels