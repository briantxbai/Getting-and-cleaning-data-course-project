##This R script includes R codes for JHU Getting
##and cleaning data course project
library(dplyr)

##Download and load data
filename <- "getdata_dataset.zip"
if(!file.exists(filename)){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, filename)
}
if(!file.exists("UCI HAR Dataset")){
  unzip(filename)
}

trainData <- read.table(".//UCI HAR Dataset//train//X_train.txt")
trainLabels <- read.table(".//UCI HAR Dataset//train//y_train.txt")
trainSubjects <- read.table(".//UCI HAR Dataset//train//subject_train.txt")
testData <- read.table(".//UCI HAR Dataset//test//X_test.txt")
testLabels <- read.table(".//UCI HAR Dataset//test//y_test.txt")
testSubjects <- read.table(".//UCI HAR Dataset//test//subject_test.txt")
features <- read.table(".//UCI HAR Dataset//features.txt")
activityLabels <- read.table(".//UCI HAR Dataset//activity_labels.txt")

##Extract the feature of interest (mean & standard deviation)
feature.index <- grep("mean\\(\\)|std\\(\\)", features[,2])
feature.name <- features[feature.index,2]
feature.name <- gsub("-","",feature.name)
feature.name <- gsub('[()]','',feature.name)
trainData <- trainData[,feature.index]
testData <- testData[,feature.index]

##Merge the data, subjects and activities, and add desciptive labels 
##for each variable
trainData <- cbind(trainSubjects,trainLabels,trainData)
testData <- cbind(testSubjects,testLabels,testData)
MergedData <- rbind(trainData,testData)
colnames(MergedData) <- c("Subjects","Activities",feature.name)

##Uses descriptive activity names to name the activities in the data set
MergedData$Activities <- factor(MergedData$Activities, levels = activityLabels[,1],labels = tolower(activityLabels[,2]))

##Turn the subjects and activities columns into factor
MergedData$Subjects <- as.factor(MergedData$Subjects)

##Appropriately labels the data set with descriptive variable names
names(MergedData)<-gsub("^t", "Time", names(MergedData))
names(MergedData)<-gsub("^f", "Frequency", names(MergedData))
names(MergedData)<-gsub("Acc", "Accelerometer", names(MergedData))
names(MergedData)<-gsub("Gyro", "Gyroscope", names(MergedData))
names(MergedData)<-gsub("Mag", "Magnitude", names(MergedData))
names(MergedData)<-gsub("BodyBody", "Body", names(MergedData))
names(MergedData)<-gsub("mean", "Mean", names(MergedData))
names(MergedData)<-gsub("std", "Std", names(MergedData))

##Create a second, independent tidy data set with the average 
##of each variable for each activity and each subject.
MergedData.aggr <- aggregate(. ~ Subjects - Activities, data = MergedData, mean)
MergedData.mean <- tbl_df(arrange(MergedData.aggr,Subjects,Activities))

write.table(MergedData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
