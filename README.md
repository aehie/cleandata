# Getting and Cleaning the Data Course Project
## Downloading and summarizing the SAMSUNG dataset on Human Activity Recognition

The script run_analysis.R downloads the archive for the course project assignment of “Getting and Cleaning the Data” coursera course, unzips it and reads the measurements for the train and test datasets (“trainset” and “testset” data frames in the code).

The variable names are read from the according downloaded text file and adjusted in such a way that keeps them meaningful but makes them appropriate for working within R environment. A “set” variable is added in order to preserve the information on the set type when the tables are merged (the value is “test” for the test set table and “train” for the train set table). The subject id’s are read from the downloaded text files and added as a separate value into the data frames. The test set and train set are merged into a one data frame called “mergedset” in the code. Activity names are added into the data frame according to the downloaded text file.

The measurements corresponding to the means and standard deviations are extracted by searching for the patterns “mean” and “std” in the variable names (register ignored). The remaining observations are omitted.

For the last part of the assignment (Step 5) the data frame “mergedset” is slpited by the subject id and activity, the means of mean and standard deviations for each activity and each subject are calculated. The results are stored in the file tidyset.txt



