RR_project1 <- function() {
     # Load file "activity.csv" from working directory
     edata <- read.csv("activity.csv")
     
     # Create a vector that stores the total number of steps taken each day
     byday <- tapply(edata$steps, edata$date, sum, na.rm=TRUE)
     
     head(byday)
     
     #hist(byday, main="Number of Steps Taken per Day", xlab="Number of Steps,", ylab="Count", col="orange", breaks=10)
     
     print(paste("Mean steps per day:" , format(mean(byday, na.rm=TRUE),nsmall=2)))
     print(paste("Median steps per day:", median(byday, na.rm=TRUE)))
     
     avgsteps <- tapply(edata$steps, edata$interval, mean, na.rm=TRUE)
     intlist <- unique(edata$interval)
     plot(intlist, avgsteps, type="l", xlab="Time Interval", ylab="Nunmber of Steps")
     print(paste("Interval with highest avg. # of steps:", intlist[avgsteps==max(avgsteps)],"minutes" ))

     nalist <- is.na(edata$steps)
     print(paste("Number of rows containing NA:",sum(nalist)  ))
     
     #Fill in each NA with average from the dataset:
     
     
          
}