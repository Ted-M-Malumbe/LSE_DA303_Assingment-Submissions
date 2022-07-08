# Determine your working directory
getwd()

# Change your current directory.
setwd(dir = "/Users/tedmalumbe/Dropbox/Mac/Desktop/") 

# Read the CSV File: Gamessales
data_2 <- read.csv(file.choose(), header=T)

#Importing the gamessales file
read.table(file = "/Users/tedmalumbe/Dropbox/Mac/Desktop/games_sales.csv", sep = '\t', header = TRUE, stringsAsFactors = FALSE)

# Print the data frame
data_2
View(data_2)

# Sense-check the data set
# Return the structure of the data frame
str(data_2)

# typeof()
typeof(data_2)

# class()
class(data_2)

# Check the dimensions of the data frame
dim(data_2)

# Import the necessary libraries
library(ggplot2)
library(tidyverse)
library(dplyr)
library(ggcorrplot)

# Sense check the data set
head(data_2)
str(data_2)

#Visualise the data
# View the data frame
View(data_2)

# summarise the data set
summary(data_2)

# sum of missing values 
sum(is.na (data_2))

#Covert data to lower case
tolower(data_2)

View(data_2)

#Basic Histogram
ggplot(data = data_2, aes(x=NA_Sales)) + 
  geom_histogram(bins=300, fill = 'pink')

ggplot(data_2, aes(x=EU_Sales)) + 
  geom_histogram(bins=300, fill = 'pink')

ggplot(data_2, aes(x=Global_Sales)) + 
  geom_histogram(bins=300, fill = 'pink')

# Test the correlation between the variables
cor(data_2[,unlist(lapply(data_2, is.numeric))])

#Plot to view the correlation
ggplot(data = data_2, aes(x=EU_Sales, y=NA_Sales,)) +
  geom_point() +
  xlab('EU Sales') + ylab('NA_Sales') +
  ggtitle('EU sales versus NA Sales')