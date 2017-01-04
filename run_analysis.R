## Downloads and reads datasets into the worksplace.
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "~/Documents/R_program/UCI HAR Dataset.zip")
dataDownloaded <- date()
setwd("~/Documents/R_program/UCI HAR Dataset")
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
subject_test <- read.table("test/subject_test.txt")
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_train <- read.table("train/subject_train.txt")
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")


##  Merges the training and the test sets to create one data set.
test <- cbind(subject_test,y_test,x_test) #combines test datasets of subject,set,labels.
names(test) <- c("subject","activity",as.character(features$V2)) #names the test dataset
train <- cbind(subject_train,y_train,x_train) #combines train datasets of subject,set,labels.
names(train) <- c("subject","activity",as.character(features$V2)) #names the train dataset
merges <- rbind(cbind(sets="test",test),cbind(sets="train",train)) #combines test and train dataset


## Extracts only the measurements on the mean and standard deviation for each measurement.
meannumber <- grep("mean()",features$V2)+3 #finds the location of mean
stdnumber <- grep("std()",features$V2)+3 #finds the location of std
extracts <- cbind(merges[,c(1,2,3)],cbind(merges[,meannumber],merges[,stdnumber])) #extracts both of mean and std


## Uses descriptive activity names to name the activities in the data set.
extracts$activity <- as.character(extracts$activity) #changes class of activity to character
activity_labels$V1 <- as.character(activity_labels$V1)
activity_labels$V2 <- as.character(activity_labels$V2)
for (i in 1:length(activity_labels$V1)) { #names activities using descriptive names
        extracts$activity <- gsub(activity_labels$V1[i],activity_labels$V2[i],extracts$activity)
}


## Appropriately labels the data set with descriptive variable names.
namesEx <- names(extracts)
namesEx <- gsub("-","",namesEx) #removes "-"
namesEx <- gsub("\\(\\)","",namesEx) #removes "()"
namesEx <- tolower(namesEx) #lower the capital letter
names(extracts) <- namesEx


## From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
library(reshape2)
extractsMelt <- melt(extracts, id=c("subject","activity"),measure.vars=c(namesEx[4:82])) #melts data
subAndActData <- dcast(extractsMelt, subject + activity ~ variable, mean) #casts data based on subject and activity
write.table(subAndActData,"submissionDataSet.txt",row.names=FALSE)


