##This R script includes R codes for JHU Getting
##and cleaning data course project
library(reshape2)

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
feature.index <- grep(".*mean.*|.*std.*", features[,2])
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
colnames(MergedData) <- tolower(c("subjects","activities",feature.name))

##Name the activities in the data set
MergedData$activities <- factor(MergedData$activities, levels = activityLabels[,1],labels = tolower(activityLabels[,2]))

##Turn the subjects and activities columns into factor
MergedData$subjects <- as.factor(MergedData$subjects)

##Create a second, independent tidy data set with the average 
##of each variable for each activity and each subject.
MergedData.melted <- melt(MergedData, id = c("subjects", "activities"))
MergedData.mean <- dcast(MergedData.melted, subjects + activities ~ variable, mean)

write.table(MergedData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
