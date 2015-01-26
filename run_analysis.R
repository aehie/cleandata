require(httr)
require(plyr)

#downloading and unzipping the data set

projectURL <-
  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
temp <- tempfile(fileext = ".zip")
GET(projectURL, write_disk(temp))
unzip(temp)
unlink(temp)
file.rename("UCI HAR Dataset", "UciHarData")

#Reading the data

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

#merging the two sets together
mergedset <- rbind(trainset, testset)

#extracting only the means and stdev for each measurement

means <- grep("mean", names(mergedset), ignore.case = TRUE)
stdevs <-  grep("std", names(mergedset), ignore.case = TRUE)
meansdevs <- names(mergedset)[union(means, stdevs)]
mergedset <- mergedset[ , c("set", "activity.label", "subject.id", meansdevs)]

#Step 4: Including the activity names into the data set
activities <- read.table("UciHarData/activity_labels.txt",
                         col.names = c("activity.label", "activity"))

mergedset <- merge(mergedset, activities)

#Step 5: creating a new tidy data set

split.actsubj <- split(mergedset, mergedset$subject.id)
split.actsubj <- lapply(split.actsubj, function(x) split(x, x$activity) )
split.actsubj <- unlist(split.actsubj, recursive = FALSE)
tidyset <- ldply(split.actsubj, function(x) colMeans(x[ , meansdevs]))
tidyset[ , c("subject.id", "activity")] <- ldply(strsplit(tidyset$.id, "\\."))
tidyset <- cbind(tidyset[ , c("subject.id", "activity")], tidyset[, 1:87])
tidyset$.id <- NULL
write.table(tidyset, file = "tidyset.txt",  row.name=FALSE)