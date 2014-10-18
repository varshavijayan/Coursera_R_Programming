# Coursera_R_Programming: Programming Assignment - 1
# Authour: Varsha Vijayan

pollutantmean <- function (directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  # Set the working directory

  setwd(paste("C:/Varsha/Coursera/R_Programming/R_Programs/",directory, sep=""))
  
  # fileNames inside the directory
  # files <- as.character(list.files(path <- directory))
  allFiles <- list.files()
  # merging all files in the directory so that combined mean of different monitors could be calculated
  for(file in allFiles) {
    
    if(!exists('monitor')) {
      monitor <- read.csv(file)
    }
    
    if(exists('monitor')) {
      tempMonitor <- read.csv(file)
      monitor <- rbind(monitor, tempMonitor) # binding rows (eqvt to ; Matlab - adding arrays one below the other)
      rm(tempMonitor)
    }
      
  }
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  #monitor <- na.omit(monitor)
  # monitorSubset <- subset(monitor, ID = id) # did not work
  
  monitorSubset <- monitor[monitor[["ID"]] %in% id, ]  
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  print(colMeans(monitorSubset[pollutant], na.rm = TRUE)) 
  
  
}