require(httr)
require(plyr)
projectURL <-
  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
temp <- tempfile(fileext = ".zip")
GET(projectURL, write_disk(temp))
unzip(temp)
unlink(temp)
file.rename("UCI HAR Dataset", "UciHarData")

obsvars <- read.table("UciHarData/features.txt")
obsvars <- make.names(obsvars[, 2], unique = TRUE)


trainlabels <- read.table("UciHarData/train/y_train.txt",  colClasses = "factor")
trainset <- read.table("UciHarData/train/X_train.txt", col.names = obsvars,
                       colClasses = "numeric", row.names = NULL)
trainset$activity.label <- as.vector(trainlabels[, 1])
trainset$subject.id <- as.vector(read.table("UciHarData/train/subject_train.txt",
                                  colClasses = "factor")[, 1])
trainset$set <- "train"


testlabels <- read.table("UciHarData/test/y_test.txt", colClasses = "factor")
testset <- read.table("UciHarData/test/X_test.txt", col.names = obsvars, 
                      colClasses = "numeric", row.names = NULL)
testset$activity.label <- as.vector(testlabels[, 1])
testset$subject.id <- as.vector(read.table(
  "UciHarData/test/subject_test.txt", colClasses = "factor")[,1])
testset$set <- "test"

mergedset <- rbind(trainset, testset)

#Uses descriptive activity names to name the activities in the data set
activities <- read.table("UciHarData/activity_labels.txt",
                         col.names = c("activity.label", "activity"))

mergedset <- merge(mergedset, activities)


