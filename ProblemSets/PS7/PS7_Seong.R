#install.packages("mice")
#install.packages("modelsummary")

library(mice)
library(modelsummary)
library(tidyverse)

# read .csv file
setwd("/Users/mieonseong/Downloads")
data <- read.csv("wages.csv")
data <- read.csv("/Users/mieonseong/Downloads/wages.csv")


# Question. 5
# drop rows with NA in hgc
data <- data[!is.na(data$hgc),]

# drop rows with NA in tenure
data <- data[!is.na(data$tenure),]



# Question. 6
# summary table of the data
datasummary_skim(data)

datasummary(All(data) ~ Mean + SD + Min + Median + Max, data = data, output = 'latex')

# Summary of the data
summary(data)



# Question. 7
# Estimate the regression using only complete cases
# drop rows with NA in logwage
data0 <- data[!is.na(data$logwage),]
model <- lm(logwage ~ hgc + tenure + I(tenure^2) + age + married, data = data0)

# Mean imputation
data1 <- wages
data1 <- mice(data, m=1, method='mean')
model1 <- with(data1, lm(logwage ~ hgc + tenure + I(tenure^2) + age + married))

# Predictive mean matching
data2 <- wages
data2 <- mice(data, m=1, method='pmm')
model2 <- with(data2, lm(logwage ~ hgc + tenure + I(tenure^2) + age + married))

# Multiple imputation
data3 <- wages
data3 <- mice(data, m=5, method='pmm')
model3 <- with(data3, lm(logwage ~ hgc + tenure + I(tenure^2) + age + married))

# summary table of the data
datasummary_skim(data)

datasummary(All(data) ~ Mean + SD + Min + Median + Max, data = data, output = 'latex')

# Summary of the data
summary(data)
