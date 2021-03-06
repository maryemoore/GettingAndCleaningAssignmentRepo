#CodeBook for Getting And Cleaning Coursera Assignment
###Provides new variable (column) labels used in the tidy dataset created from the Samsung dataset available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
####Please refer to the features_info.txt file from that dataset for additional information

Format of Codebook: Original name from Samsung dataset features.txt file = 	Descriptive name used in tidy data set created by the R code in this repo
The mean of each of the following values is provided in the tidy data set.
* tBodyAcc-mean()-X	=	Mean_Body_Acceleration_X
* tBodyAcc-mean()-Y	=	Mean_Body_Acceleration_Y
* tBodyAcc-mean()-Z	=	Mean_Body_Acceleration_Z
* tGravityAcc-mean()-X	=	Mean_Gravity_Acceleration_X
* tGravityAcc-mean()-Y	=	Mean_Gravity_Acceleration_Y
* tGravityAcc-mean()-Z	=	Mean_Gravity_Acceleration_Z
* tBodyAccJerk-mean()-X	=	Mean_Body_Accel_Jerk_X
* tBodyAccJerk-mean()-Y	=	Mean_Body_Accel_Jerk_Y
* tBodyAccJerk-mean()-Z	=	Mean_Body_Accel_Jerk_Z
* vtBodyGyro-mean()-X	=	Mean_Body_Angle_X
* tBodyGyro-mean()-Y	=	Mean_Body_Angle_Y
* tBodyGyro-mean()-Z	=	Mean_Body_Angle_Z
* tBodyGyroJerk-mean()-X	=	Mean_Body_Angle_Jerk_X
* tBodyGyroJerk-mean()-Y	=	Mean_Body_Angle_Jerk_Y
* tBodyGyroJerk-mean()-Z	=	Mean_Body_Angle_Jerk_Z
* tBodyAccMag-mean()	=	Mean_Magnitude_Body_Accel
* tGravityAccMag-mean()	=	Mean_Magnitude_Gravity_Accel
* tBodyAccJerkMag-mean()	=	Mean_Magnitude_Body_Accel_Jerk
* tBodyGyroMag-mean()	=	Mean_Magnitude_Body_Angle
* tBodyGyroJerkMag-mean()	=	Mean_Magnitude_Body_Angle_Jerk
* fBodyAcc-mean()-X	=	Mean_FFT_Body_Acceleration_X
* fBodyAcc-mean()-Y	=	Mean_FFT_Body_Acceleration_Y
* fBodyAcc-mean()-Z	=	Mean_FFT_Body_Acceleration_Z
* fBodyAcc-meanFreq()-X	=	Mean_Freq_FFT_Body_Acceleration_X
* fBodyAcc-meanFreq()-Y	=	Mean_Freq_FFT_Body_Acceleration_Y
* fBodyAcc-meanFreq()-Z	=	Mean_Freq_FFT_Body_Acceleration_Z
* fBodyAccJerk-mean()-X	=	Mean_FFT_Body_Accel_Jerk_X
* fBodyAccJerk-mean()-Y	=	Mean_FFT_Body_Accel_Jerk_Y
* fBodyAccJerk-mean()-Z	=	Mean_FFT_Body_Accel_Jerk_Z
* fBodyAccJerk-meanFreq()-X	=	Mean_Freq_FFT_Body_Accel_Jerk_X
* fBodyAccJerk-meanFreq()-Y	=	Mean_Freq_FFT_Body_Accel_Jerk_Y
* fBodyAccJerk-meanFreq()-Z	=	Mean_Freq_FFT_Body_Accel_Jerk_Z
* fBodyGyro-mean()-X	=	Mean_FFT_Body_Angle_X
* fBodyGyro-mean()-Y	=	Mean_FFT_Body_Angle_Y
* fBodyGyro-mean()-Z	=	Mean_FFT_Body_Angle_Z
* fBodyGyro-meanFreq()-X	=	Mean_Freq_FFT_Body_Angle_X
* fBodyGyro-meanFreq()-Y	=	Mean_Freq_FFT_Body_Angle_Y
* fBodyGyro-meanFreq()-Z	=	Mean_Freq_FFT_Body_Angle_Z
* fBodyAccMag-mean()	=	Mean_FFT_Magnitude_Body_Accel
* fBodyAccMag-meanFreq()	=	Mean_Freq_FFT_Magnitude_Body_Accel
* fBodyBodyAccJerkMag-mean()	=	Mean_FFT_Magnitude_Body_Accel_Jerk
* fBodyBodyAccJerkMag-meanFreq()	=	Mean_Freq_FFT_Magnitude_Body_Accel_Jerk
* fBodyBodyGyroMag-mean()	=	Mean_FFT_Magnitude_Body_Angle
* fBodyBodyGyroMag-meanFreq()	=	Mean_Freq_FFT_Magnitude_Body_Angle
* fBodyBodyGyroJerkMag-mean()	=	Mean_FFT_Magnitude_Body_Angle_Jerk
* fBodyBodyGyroJerkMag-meanFreq()	=	Mean_Freq_FFT_Magnitude_Body_Angle_Jerk
* tBodyAcc-std()-X	=	Std_Body_Acceleration_X
* tBodyAcc-std()-Y	=	Std_Body_Acceleration_Y
* tBodyAcc-std()-Z	=	Std_Body_Acceleration_Z
* tGravityAcc-std()-X	=	Std_Gravity_Acceleration_X
* tGravityAcc-std()-Y	=	Std_Gravity_Acceleration_Y
* tGravityAcc-std()-Z	=	Std_Gravity_Acceleration_Z
* tBodyAccJerk-std()-X	=	Std_Body_Accel_Jerk_X
* tBodyAccJerk-std()-Y	=	Std_Body_Accel_Jerk_Y
* tBodyAccJerk-std()-Z	=	Std_Body_Accel_Jerk_Z
* tBodyGyro-std()-X	=	Std_Body_Angle_X
* tBodyGyro-std()-Y	=	Std_Body_Angle_Y
* tBodyGyro-std()-Z	=	Std_Body_Angle_Z
* tBodyGyroJerk-std()-X	=	Std_Body_Angle_Jerk_X
* tBodyGyroJerk-std()-Y	=	Std_Body_Angle_Jerk_Y
* tBodyGyroJerk-std()-Z	=	Std_Body_Angle_Jerk_Z
* tBodyAccMag-std()	=	Std_Magnitude_Body_Accel
* tGravityAccMag-std()	=	Std_Magnitude_Gravity_Accel
* tBodyAccJerkMag-std()	=	Std_Magnitude_Body_Accel_Jerk
* tBodyGyroMag-std()	=	Std_Magnitude_Body_Angle
* tBodyGyroJerkMag-std()	=	Std_Magnitude_Body_Angle_Jerk
* fBodyAcc-std()-X	=	Std_FFT_Body_Acceleration_X
* fBodyAcc-std()-Y	=	Std_FFT_Body_Acceleration_Y
* fBodyAcc-std()-Z	=	Std_FFT_Body_Acceleration_Z
* fBodyAccJerk-std()-X	=	Std_FFT_Body_Accel_Jerk_X
* fBodyAccJerk-std()-Y	=	Std_FFT_Body_Accel_Jerk_Y
* fBodyAccJerk-std()-Z	=	Std_FFT_Body_Accel_Jerk_Z
* fBodyGyro-std()-X	=	Std_FFT_Body_Angle_X
* fBodyGyro-std()-Y	=	Std_FFT_Body_Angle_Y
* fBodyGyro-std()-Z	=	Std_FFT_Body_Angle_Z
* fBodyAccMag-std()	=	Std_FFT_Magnitude_Body_Accel
* fBodyBodyAccJerkMag-std()	=	Std_FFT_Magnitude_Body_Accel_Jerk
* fBodyBodyGyroMag-std()	=	Std_FFT_Magnitude_Body_Angle
* fBodyBodyGyroJerkMag-std()	=	Std_FFT_Magnitude_Body_Angle_Jerk
