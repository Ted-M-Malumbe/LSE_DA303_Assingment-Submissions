# Determine your working directory
getwd()

# Change your current directory.
setwd(dir = "/Users/tedmalumbe/Dropbox/Mac/Desktop/") 

# Read the CSV File: Legoset 
data <- read.csv(file.choose(), header=T)

#Importing the legoset file
read.table(file = "/Users/tedmalumbe/Dropbox/Mac/Desktop/lego.csv", sep = '\t', header = TRUE, stringsAsFactors = FALSE)

#Sense Check the data
head(data)

# Print the data frame
data
View(data)

# Sense-check the data set
# Return the structure of the data frame
str(data)

# typeof()
typeof(data)

# class()
class(data)

# Check the dimensions of the data frame
dim(data)

#Import all the neccessary libraries

# Install tidyverse package
install.packages("tidyverse")

# Import tidyverse library
library(tidyverse)

#Identify the group that will most likely leave a review.
qplot(ages, num_reviews, data = data)  +
  labs(title = "Age Group That Will Most Likely Leave a Review")

#Most popular and most expensive of customers less than 25
data_age25 <- data[data$age<=25,]
qplot(num_reviews, piece_count, data = data) +
  labs(title = "Most popular product of ages below or equal to 25")

#Most expensive product for ages greater than 25
data_age25 <- data[data$age>=25,]
qplot(ages, piece_count, 
      data = data_age25, colour = list_price, geom = c("point", "jitter"))  +
  labs(title = "Most Expensive product for ages Greater than 25")
