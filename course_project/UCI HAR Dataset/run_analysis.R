# load dplyr library
library(dplyr)

# merge datasets - first training files, then testing files
merge_train_and_test_and_summarize <- function() {
  datasets <- c("train","test")
  
  # read features
  features <- read.table("features.txt")
  colnames(features) <- c("Feature","Feature_Name")
  activity_labels <- read.table("activity_labels.txt")
  colnames(activity_labels) <- c("Activity_Label", "Activity_Name")
  train_and_test <- data.frame()
  
  for (dataset in datasets) {
    
    # read subjects
    subject_file_name <- paste("./",dataset,"/","subject_",dataset,".txt",sep="")
    subject <- read.table(subject_file_name)
    colnames(subject) <- c("Subject")
    
    # read X data and assign features to column names so variable names are meaningful
    X_file_name <- paste("./",dataset,"/","X_",dataset,".txt",sep="")
    X <- read.table(X_file_name)
    colnames(X) <- features$Feature_Name
    
    # read y data and give the column a meaningful name 
    y_file_name <- paste("./",dataset,"/","y_",dataset,".txt",sep="")
    y <- read.table(y_file_name)
    colnames(y) <- c("Activity_Label")
    merged <- cbind(subject,y,X)
    joined <- left_join(merged, activity_labels)
    
    #reorder columns so activity name is second column
    joined <- joined[c(1,564,2:563)]
    
    #select just columns with mean and std in the name
    mean_and_std <- select(joined, Activity_Name, Subject, contains("mean", 
                      ignore.case = FALSE), contains("std", ignore.case = FALSE))
    
    #add result to final data set
    train_and_test <- rbind(train_and_test, mean_and_std)
  }
  
  # write.table(train_and_test,file="./train_and_test.txt",row.names=FALSE)
  
  # create second independent tidy data set with the average of each variable for each 
  # activity and each subject
  library(plyr)
  library(reshape2)
  
  # melt table (groups by Activity_Name and Subject columns)
  grouped_by_activity_name_and_subject <- melt(train_and_test, id.vars=c("Activity_Name", "Subject"))
  
  # calculate mean of all variables by activity and subject
  summarized <- ddply(grouped_by_activity_name_and_subject, 
                  c("Activity_Name", "Subject", "variable"), summarise, mean = mean(value))
  write.table(summarized, file="means_by_activity_and_subject.txt", row.names = FALSE)
  
  
  
}