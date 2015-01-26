#Variables Description for the tidydata.txt dataset

"subject.id"
	 uniquely identifies the subject participating in the experiment
	 takes values 1 to 30
	 
"activity"
	The activity during which the measurements were taken
	takes values:
	
	WALKING
	WALKING_UPSTAIRS
	WALKING_DOWNSTAIRS
	SITTING
	STANDING
	LAYING
	
##Note: All the following variables are normalized to be in a range [-1, 1]. The values are averages for each activity performed by each subject across the original time series data.
	
"tBodyAcc.mean...X" 
	Mean body acceleration signal on the X direction
	
"tBodyAcc.mean...Y"
	Mean body acceleration signal on the Y direction
	
"tBodyAcc.mean...Z"
	Mean body acceleration signal on the Z direction
		
 "tGravityAcc.mean...X"
 	Mean gravity acceleration signal on the X direction
 
 "tGravityAcc.mean...Y"
 	Mean gravity acceleration signal on the Y direction
 
 "tGravityAcc.mean...Z"
 	Mean gravity acceleration signal on the Z direction
 
 "tBodyAccJerk.mean...X"
 	Mean body acceleration Jerk signal on the X direction
 
 "tBodyAccJerk.mean...Y"
 	Mean body acceleration Jerk signal on the Y direction
 
 "tBodyAccJerk.mean...Z"
 	Mean body acceleration Jerk signal on the Z direction
 
 "tBodyGyro.mean...X"
 	Mean gyroscope signal on the X direction
 
 "tBodyGyro.mean...Y"
 	Mean gyroscope signal on the Y direction
 
 "tBodyGyro.mean...Z"
 	Mean gyroscope signal on the Z direction
 
 "tBodyGyroJerk.mean...X"
 	Mean gyroscope Jerk signal on the X direction
 
 "tBodyGyroJerk.mean...Y"
 	Mean gyroscope Jerk signal on the Y direction
 
 "tBodyGyroJerk.mean...Z"
 	Mean gyroscope Jerk signal on the Z direction
 
 "tBodyAccMag.mean.."
 	Mean magnitude of the body acceleration signal
 
 "tGravityAccMag.mean.."
 	Mean magnitude of the gravity acceleration signal
 
 "tBodyAccJerkMag.mean.."
 	Mean magnitude of the body acceleration Jerk signal
 
 "tBodyGyroMag.mean.."
 	Mean magnitude of the gyroscope Jerk signal
 
 "tBodyGyroJerkMag.mean.."
 	Mean magnitude of the gyroscope Jerk signal
 
 "fBodyAcc.mean...X"
 	Fast Fourier Transform of the mean body acceleration signal on the X direction
 
 "fBodyAcc.mean...Y"
 	Fast Fourier Transform of the mean body acceleration signal on the Y direction
 
 "fBodyAcc.mean...Z"
 	Fast Fourier Transform of the mean body acceleration signal on the Z direction
 
 "fBodyAcc.meanFreq...X"
	 Fast Fourier Transform of the weighted average of the frequency components of the body acceleration signal on the X direction
 
 "fBodyAcc.meanFreq...Y"
 	Fast Fourier Transform of the weighted average of the frequency components of the body acceleration signal on the Y direction
 
 "fBodyAcc.meanFreq...Z"
	 Fast Fourier Transform of the weighted average of the frequency components of the body acceleration signal on the Z direction
 
 "fBodyAccJerk.mean...X"
 	Fast Fourier Transform of the mean body acceleration Jerk signal on the X direction
 
 "fBodyAccJerk.mean...Y"
 	Fast Fourier Transform of the mean body acceleration Jerk signal on the Y direction
 
 "fBodyAccJerk.mean...Z"
 	Fast Fourier Transform of the mean body acceleration Jerk signal on the XZdirection
 
 "fBodyAccJerk.meanFreq...X"
 	Fast Fourier Transform of the weighted average of the frequency components of the Jerk body acceleration signal on the X direction
 
 "fBodyAccJerk.meanFreq...Y"
  	Fast Fourier Transform of the weighted average of the frequency components of the Jerk body acceleration signal on the Y direction
 
 "fBodyAccJerk.meanFreq...Z"
 	Fast Fourier Transform of the weighted average of the frequency components of the Jerk body acceleration signal on the Z direction
 
 "fBodyGyro.mean...X"
 	Fast Fourier Transform of the mean gyroscope signal on the X direction
 
 "fBodyGyro.mean...Y"
 	Fast Fourier Transform of the mean gyroscope signal on the Y direction
 
 "fBodyGyro.mean...Z"
 	Fast Fourier Transform of the mean gyroscope signal on the Z direction
 
 "fBodyGyro.meanFreq...X"
 	Fast Fourier Transform of the weighted average of the frequency components of the  gyroscope signal on the X direction
 
 "fBodyGyro.meanFreq...Y"
 	Fast Fourier Transform of the weighted average of the frequency components of the  gyroscope signal on the Y direction
 
 "fBodyGyro.meanFreq...Z"
 	Fast Fourier Transform of the weighted average of the frequency components of the  gyroscope signal on the Z direction
 
 "fBodyAccMag.mean.."
 	Fast Fourier Transform of the mean magnitude of the body acceleration signal 
 
 "fBodyAccMag.meanFreq.."
 	Fast Fourier Transform of the weighted average of the frequency components of the mean body acceleration signal
	
 "fBodyBodyAccJerkMag.mean.."
 	Fast Fourier Transform of the weighted average of the frequency components of the mean body acceleration Jerk signal
 
 "fBodyBodyAccJerkMag.meanFreq.."
 	Fast Fourier Transform of the weighted average of the frequency components of the mean magnitude of the body acceleration signal
 
 "fBodyBodyGyroMag.mean.."
 	Fast Fourier Transform of the mean magnitude of the gyroscope signal
	 
 "fBodyBodyGyroMag.meanFreq.."
 	Fast Fourier Transform of the weighted average of the frequency components of the mean magnitude of the gyroscope signal
 
 "fBodyBodyGyroJerkMag.mean.."
 	Fast Fourier Transform of the mean magnitude of the gyroscope Jerk signal
 
 "fBodyBodyGyroJerkMag.meanFreq.."
 	Fast Fourier Transform of the weighted average of the frequency components of the mean magnitude of the gyroscope Jerk signal
 
 "angle.tBodyAccMean.gravity."
 
 "angle.tBodyAccJerkMean..gravityMean."
 
 "angle.tBodyGyroMean.gravityMean."
 
 "angle.tBodyGyroJerkMean.gravityMean."
 
 "angle.X.gravityMean."
 
 "angle.Y.gravityMean."
 
 "angle.Z.gravityMean."
 
 "tBodyAcc.std...X"
 	Standard deviation of the body acceleration signal on the X direction
	
 "tBodyAcc.std...Y"
 	Standard deviation of the body acceleration signal on the Y direction
 
 "tBodyAcc.std...Z"
 	Standard deviation of the body acceleration signal on the Z direction
 
 "tGravityAcc.std...X"
 	Standard deviation of the gravity acceleration signal on the X direction
 
 "tGravityAcc.std...Y"
 	Standard deviation of the gravity acceleration signal on the Y direction
 
 "tGravityAcc.std...Z"
 	Standard deviation of the gravity acceleration signal on the Z direction
 
 "tBodyAccJerk.std...X"
 	Standard deviation of the body acceleration Jerk signal on the X direction
 
 "tBodyAccJerk.std...Y"
 	Standard deviation of the body acceleration Jerk signal on the Y direction
	
 "tBodyAccJerk.std...Z"
 	Standard deviation of the body acceleration Jerk signal on the Z direction
 
 "tBodyGyro.std...X" "tBodyGyro.std...Y" "tBodyGyro.std...Z" "tBodyGyroJerk.std...X" "tBodyGyroJerk.std...Y" "tBodyGyroJerk.std...Z" "tBodyAccMag.std.." "tGravityAccMag.std.." "tBodyAccJerkMag.std.." "tBodyGyroMag.std.." "tBodyGyroJerkMag.std.." "fBodyAcc.std...X" "fBodyAcc.std...Y" "fBodyAcc.std...Z" "fBodyAccJerk.std...X" "fBodyAccJerk.std...Y" "fBodyAccJerk.std...Z" "fBodyGyro.std...X" "fBodyGyro.std...Y" "fBodyGyro.std...Z" "fBodyAccMag.std.." "fBodyBodyAccJerkMag.std.." "fBodyBodyGyroMag.std.." "fBodyBodyGyroJerkMag.std.."