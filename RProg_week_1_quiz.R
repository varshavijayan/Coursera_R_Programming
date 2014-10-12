# Coursera_R_Programming
# Week_1_Quiz
# Author: Varsha Vijayan

# read .csv file
inputFile <- read.csv("hw1_data.csv")

# access column names
columnNames <- names(inputFile)
print(columnNames)

# extract first two rows of data frame and print
first2rows <- head(inputFile,2)
print(first2rows)

# count the number (#) of observations (rows) in this dataframe
numberOfRows <- nrow(inputFile)

# extract last 2 rows of data frame and print them to the console
last2rows <- inputFile[c(numberOfRows-1,numberOfRows),]
print(last2rows)

# What is the value of Ozone in the 47th row?
print(inputFile$Ozone[47])

# count # missing values in the Ozone column of this data frame
allNAs <- colSums(is.na(inputFile))
print(allNAs[1])

#  mean of the Ozone column in this dataset. Exclude missing values (coded as NA) from this calculation.
meanOzone <- mean(inputFile$Ozone, na.rm = TRUE)
print(meanOzone)

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. 
# What is the mean of Solar.R in this subset?
subInputFile <- subset(inputFile, Ozone > 31 & Temp > 90)
print(mean(subInputFile$Solar.R))

# What is the mean of "Temp" when "Month" is equal to 6?
subInputFile2 <- subset(inputFile, Month == 6)
print(mean(subInputFile2$Temp))

# What was the maximum ozone value in the month of May (i.e. Month = 5)?
subInputFile3 <- subset(inputFile, Month == 5)
print(max(subInputFile3$Ozone, na.rm = TRUE))



