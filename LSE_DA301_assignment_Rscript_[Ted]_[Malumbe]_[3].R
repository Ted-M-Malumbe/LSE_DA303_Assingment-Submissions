# Determine your working directory
getwd()

# Change your current directory.
setwd(dir = "/Users/tedmalumbe/Dropbox/Mac/Desktop/") 

# Read the CSV File: Gamessales
data_3 <- read.csv(file.choose(), header=T)

#Importing the gamesales file
read.table(file = "/Users/tedmalumbe/Dropbox/Mac/Desktop/games_sales.csv", sep = '\t', header = TRUE, stringsAsFactors = FALSE)

# Import tidyverse library
library(tidyverse)
library(readr)
library(dplyr)
library(tidyr)
library(skimr)
library(DataExplorer)

## Explore the data set
head(data_3)
summary(data_3)

# Sense-check the data set
# Return the structure of the data frame
str(data_3)

# typeof()
typeof(data_3)

# class()
class(data_3)

# Check the dimensions of the data frame
dim(data_3)

# Create a linear regression model and print the summary stats
model1 <- lm(Global_Sales ~ NA_Sales + EU_Sales, data = data_3)
summary(model1)

# Sum of least squares to determine strength
SSE = sum(model1$residuals^2)
SSE

#Visualise the relationship of NA + EU Sales with Global
ggplot(data = data_3,  aes(y=Global_Sales, x = NA_Sales + EU_Sales)) +
  geom_point() + xlab('North America and Europe Sales') +
  ylab('Global Sales') + ggtitle('Relationship between Global Sales and North America and Europe Sales') +
  geom_smooth(method = lm)

# Create a new object and specify the predict function:
predictTest = predict(model1, newdata = SalesTest, interval = 'confidence')
predictTest # [3] Print the predicted sales for the next year