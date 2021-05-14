complete <- function(directory, id = 1:332){
  allfiles <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  nobs <- numeric()
  
  for(i in id){
    filedata <- read.csv(allfiles[i], header=TRUE, sep=",")
    completecase <- complete.cases(filedata)
    nobs <- c(nobs,sum(completecase))
  }
  
  data.frame(id,nobs)
  
}