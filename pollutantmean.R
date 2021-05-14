pollutantmean <- function(directory, pollutant, id=1:332){
  
  allfiles <- list.files(path = paste(getwd(),"/",directory,sep = ""), pattern = ".csv", full.names = TRUE)
  values <- numeric()
  
  for(i in id){
    filedata <- read.csv(allfiles[i], header=TRUE, sep=",")
    values <- c(values,filedata[[pollutant]])
  }
  
  mean(values, na.rm = TRUE)
  
  
  
}


pollutantmean("specdata","sulfate",1:332)

