require(httr)
projectURL <-
  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
temp <- tempfile(fileext = ".zip")
GET(projectURL, write_disk(temp))
unzip(temp, exdir = "cleandata_rawfiles")
unlink(temp)