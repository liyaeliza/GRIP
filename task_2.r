## task 2
## predict the optimum number of clusters from iris dataset
x = iris
print(x)

# For Data Manipulation
library(tidyverse)

# For Clustering algorithm
library(cluster)
glimpse(x) ## load package "tibble"
## glimpse gives the type of the variables.

## scaling the data
dataset = x[1:4] ## we scale only the numerical variables
dataset = scale(dataset)
dataset

## finding optimal number of clusters
## install factoextra package
factoextra::fviz_nbclust(dataset, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

## seeing the graph, optimal number of clusters is 2.
