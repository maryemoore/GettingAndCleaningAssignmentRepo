#Getting and Cleaning Data Coursera Class Project Script

#Download and unzip data from  source
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="UCI_HAR_Dataset.zip", method="curl")
unzip("UCI_HAR_Dataset.zip")

#Assignment Part 1: 
#Merges the training and the test sets to create one data set.

#From the Test (30%) portion of the experiment
#read each of the raw data text files into its own R object
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
features_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

#Column bind the Test data together into a single dataframe
test <- cbind(subject_test, activity_test, features_test)

#From the Train (70%) portion of the experiment
#read each of the raw data text files into its own R object
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
features_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

#Column bind the Train data together into a single dataframe
train <- cbind(subject_train, activity_train, features_train)

#Combine the data from the Test and Train portions of the experiment
#into a single dataframe
raw_data <- rbind(test,train)

#Add the appropriate column names to the raw_data dataframe constructed above
#using the features.txt file
varnam <- read.table("./UCI HAR Dataset/features.txt")
varnam2 <- make.names(as.character(varnam$V2), unique = TRUE)
varnam3 <- c("Subject", "Activity", varnam2)
colnames(raw_data) <- varnam3

#Assignment Part 2
#Extracts only the measurements on the mean and standard deviation 
#for each measurement

library(dplyr)
#Use the select function from the dplyr package 
#to select only columns containing the word "mean" or "std"
mean_std_data <- select(raw_data, Subject, Activity, 
                        contains("mean"), contains("std"))
#Remove variables containing the word "angle" as these
#represent the angle between two mean values rather than an 
#actual mean of values
mean_std_data_sele <- select(mean_std_data, -(contains("angle")))

#Assignment Part 3
#Use descriptive activity names to name the activities in the data set

#Build a new character vector called "activity"
#with the number in the Activitiy column replaced by the activity name 
#represented in the activity_lables.txt file
activity <- replace (mean_std_data_sele$Activity, 
                     which(mean_std_data_sele$Activity==1), "Walking")
activity <- replace (activity, 
                     which(mean_std_data_sele$Activity==2), "Walking_Upstairs")
activity <- replace (activity, 
                    which(mean_std_data_sele$Activity==3), "Walking_Downstairs")
activity <- replace (activity, 
                     which(mean_std_data_sele$Activity==4), "Sitting") 
activity <- replace(activity, 
                    which(mean_std_data_sele$Activity==5), "Standing")
activity <- replace(activity,
                    which(mean_std_data_sele$Activity==6), "Laying")
#Replace the numeric Activity column with the new activity names
mean_std_descrip<-mutate(mean_std_data_sele, Activity = c(activity))

#Assignment Part 4
#Appropriately labels the data set with descriptive variable names

colnames(mean_std_descrip) <- c("Subject",
                                "Activity",
                                "Mean_Body_Acceleration_X",
                                "Mean_Body_Acceleration_Y",
                                "Mean_Body_Acceleration_Z",
                                "Mean_Gravity_Acceleration_X",
                                "Mean_Gravity_Acceleration_Y",
                                "Mean_Gravity_Acceleration_Z",
                                "Mean_Body_Accel_Jerk_X",
                                "Mean_Body_Accel_Jerk_Y",
                                "Mean_Body_Accel_Jerk_Z",
                                "Mean_Body_Angle_X",
                                "Mean_Body_Angle_Y",
                                "Mean_Body_Angle_Z",
                                "Mean_Body_Angle_Jerk_X",
                                "Mean_Body_Angle_Jerk_Y",
                                "Mean_Body_Angle_Jerk_Z",
                                "Mean_Magnitude_Body_Accel",
                                "Mean_Magnitude_Gravity_Accel",
                                "Mean_Magnitude_Body_Accel_Jerk",
                                "Mean_Magnitude_Body_Angle",
                                "Mean_Magnitude_Body_Angle_Jerk",
                                "Mean_FFT_Body_Acceleration_X",
                                "Mean_FFT_Body_Acceleration_Y",
                                "Mean_FFT_Body_Acceleration_Z",
                                "Mean_Freq_FFT_Body_Acceleration_X",
                                "Mean_Freq_FFT_Body_Acceleration_Y",
                                "Mean_Freq_FFT_Body_Acceleration_Z",
                                "Mean_FFT_Body_Accel_Jerk_X",
                                "Mean_FFT_Body_Accel_Jerk_Y",
                                "Mean_FFT_Body_Accel_Jerk_Z",
                                "Mean_Freq_FFT_Body_Accel_Jerk_X",
                                "Mean_Freq_FFT_Body_Accel_Jerk_Y",
                                "Mean_Freq_FFT_Body_Accel_Jerk_Z",
                                "Mean_FFT_Body_Angle_X",
                                "Mean_FFT_Body_Angle_Y",
                                "Mean_FFT_Body_Angle_Z",
                                "Mean_Freq_FFT_Body_Angle_X",
                                "Mean_Freq_FFT_Body_Angle_Y",
                                "Mean_Freq_FFT_Body_Angle_Z",
                                "Mean_FFT_Magnitude_Body_Accel",
                                "Mean_Freq_FFT_Magnitude_Body_Accel",
                                "Mean_FFT_Magnitude_Body_Accel_Jerk",
                                "Mean_Freq_FFT_Magnitude_Body_Accel_Jerk",
                                "Mean_FFT_Magnitude_Body_Angle",
                                "Mean_Freq_FFT_Magnitude_Body_Angle",
                                "Mean_FFT_Magnitude_Body_Angle_Jerk",
                                "Mean_Freq_FFT_Magnitude_Body_Angle_Jerk",
                                "Std_Body_Acceleration_X",
                                "Std_Body_Acceleration_Y",
                                "Std_Body_Acceleration_Z",
                                "Std_Gravity_Acceleration_X",
                                "Std_Gravity_Acceleration_Y",
                                "Std_Gravity_Acceleration_Z",
                                "Std_Body_Accel_Jerk_X",
                                "Std_Body_Accel_Jerk_Y",
                                "Std_Body_Accel_Jerk_Z",
                                "Std_Body_Angle_X",
                                "Std_Body_Angle_Y",
                                "Std_Body_Angle_Z",
                                "Std_Body_Angle_Jerk_X",
                                "Std_Body_Angle_Jerk_Y",
                                "Std_Body_Angle_Jerk_Z",
                                "Std_Magnitude_Body_Accel",
                                "Std_Magnitude_Gravity_Accel",
                                "Std_Magnitude_Body_Accel_Jerk",
                                "Std_Magnitude_Body_Angle",
                                "Std_Magnitude_Body_Angle_Jerk",
                                "Std_FFT_Body_Acceleration_X",
                                "Std_FFT_Body_Acceleration_Y",
                                "Std_FFT_Body_Acceleration_Z",
                                "Std_FFT_Body_Accel_Jerk_X",
                                "Std_FFT_Body_Accel_Jerk_Y",
                                "Std_FFT_Body_Accel_Jerk_Z",
                                "Std_FFT_Body_Angle_X",
                                "Std_FFT_Body_Angle_Y",
                                "Std_FFT_Body_Angle_Z",
                                "Std_FFT_Magnitude_Body_Accel",
                                "Std_FFT_Magnitude_Body_Accel_Jerk",
                                "Std_FFT_Magnitude_Body_Angle",
                                "Std_FFT_Magnitude_Body_Angle_Jerk")
#Old and New Names for CodeBook
#test1 <-as.data.frame(colnames(mean_std_data_sele))
#test2 <- as.data.frame(colnames(mean_std_descrip))
#testdf <- cbind(test1,test2)
#write.csv (testdf, "test.csv")

#Assignment Part 5
#From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.

data <- tbl_df(mean_std_descrip)
by_subj_act <- group_by(data, Subject, Activity)
tidy_data <- summarize(by_subj_act, 
                       meanMean_Body_Acceleration_X = mean(Mean_Body_Acceleration_X),
                       meanMean_Body_Acceleration_Y = mean(Mean_Body_Acceleration_Y),
                       meanMean_Body_Acceleration_Z = mean(Mean_Body_Acceleration_Z),
                       meanMean_Gravity_Acceleration_X = mean(Mean_Gravity_Acceleration_X),
                       meanMean_Gravity_Acceleration_Y = mean(Mean_Gravity_Acceleration_Y),
                       meanMean_Gravity_Acceleration_Z = mean(Mean_Gravity_Acceleration_Z),
                       meanMean_Body_Accel_Jerk_X = mean(Mean_Body_Accel_Jerk_X),
                       meanMean_Body_Accel_Jerk_Y = mean(Mean_Body_Accel_Jerk_Y),
                       meanMean_Body_Accel_Jerk_Z = mean(Mean_Body_Accel_Jerk_Z),
                       meanMean_Body_Angle_X = mean(Mean_Body_Angle_X),
                       meanMean_Body_Angle_Y = mean(Mean_Body_Angle_Y),
                       meanMean_Body_Angle_Z = mean(Mean_Body_Angle_Z),
                       meanMean_Body_Angle_Jerk_X = mean(Mean_Body_Angle_Jerk_X),
                       meanMean_Body_Angle_Jerk_Y = mean(Mean_Body_Angle_Jerk_Y),
                       meanMean_Body_Angle_Jerk_Z = mean(Mean_Body_Angle_Jerk_Z),
                       meanMean_Magnitude_Body_Accel = mean(Mean_Magnitude_Body_Accel),
                       meanMean_Magnitude_Gravity_Accel = mean(Mean_Magnitude_Gravity_Accel),
                       meanMean_Magnitude_Body_Accel_Jerk = mean(Mean_Magnitude_Body_Accel_Jerk),
                       meanMean_Magnitude_Body_Angle = mean(Mean_Magnitude_Body_Angle),
                       meanMean_Magnitude_Body_Angle_Jerk = mean(Mean_Magnitude_Body_Angle_Jerk),
                       meanMean_FFT_Body_Acceleration_X = mean(Mean_FFT_Body_Acceleration_X),
                       meanMean_FFT_Body_Acceleration_Y = mean(Mean_FFT_Body_Acceleration_Y),
                       meanMean_FFT_Body_Acceleration_Z = mean(Mean_FFT_Body_Acceleration_Z),
                       meanMean_Freq_FFT_Body_Acceleration_X = mean(Mean_Freq_FFT_Body_Acceleration_X),
                       meanMean_Freq_FFT_Body_Acceleration_Y = mean(Mean_Freq_FFT_Body_Acceleration_Y),
                       meanMean_Freq_FFT_Body_Acceleration_Z = mean(Mean_Freq_FFT_Body_Acceleration_Z),
                       meanMean_FFT_Body_Accel_Jerk_X = mean(Mean_FFT_Body_Accel_Jerk_X),
                       meanMean_FFT_Body_Accel_Jerk_Y = mean(Mean_FFT_Body_Accel_Jerk_Y),
                       meanMean_FFT_Body_Accel_Jerk_Z = mean(Mean_FFT_Body_Accel_Jerk_Z),
                       meanMean_Freq_FFT_Body_Accel_Jerk_X = mean(Mean_Freq_FFT_Body_Accel_Jerk_X),
                       meanMean_Freq_FFT_Body_Accel_Jerk_Y = mean(Mean_Freq_FFT_Body_Accel_Jerk_Y),
                       meanMean_Freq_FFT_Body_Accel_Jerk_Z = mean(Mean_Freq_FFT_Body_Accel_Jerk_Z),
                       meanMean_FFT_Body_Angle_X = mean(Mean_FFT_Body_Angle_X),
                       meanMean_FFT_Body_Angle_Y = mean(Mean_FFT_Body_Angle_Y),
                       meanMean_FFT_Body_Angle_Z = mean(Mean_FFT_Body_Angle_Z),
                       meanMean_Freq_FFT_Body_Angle_X = mean(Mean_Freq_FFT_Body_Angle_X),
                       meanMean_Freq_FFT_Body_Angle_Y = mean(Mean_Freq_FFT_Body_Angle_Y),
                       meanMean_Freq_FFT_Body_Angle_Z = mean(Mean_Freq_FFT_Body_Angle_Z),
                       meanMean_FFT_Magnitude_Body_Accel = mean(Mean_FFT_Magnitude_Body_Accel),
                       meanMean_Freq_FFT_Magnitude_Body_Accel = mean(Mean_Freq_FFT_Magnitude_Body_Accel),
                       meanMean_FFT_Magnitude_Body_Accel_Jerk = mean(Mean_FFT_Magnitude_Body_Accel_Jerk),
                       meanMean_Freq_FFT_Magnitude_Body_Accel_Jerk = mean(Mean_Freq_FFT_Magnitude_Body_Accel_Jerk),
                       meanMean_FFT_Magnitude_Body_Angle = mean(Mean_FFT_Magnitude_Body_Angle),
                       meanMean_Freq_FFT_Magnitude_Body_Angle = mean(Mean_Freq_FFT_Magnitude_Body_Angle),
                       meanMean_FFT_Magnitude_Body_Angle_Jerk = mean(Mean_FFT_Magnitude_Body_Angle_Jerk),
                       meanMean_Freq_FFT_Magnitude_Body_Angle_Jerk = mean(Mean_Freq_FFT_Magnitude_Body_Angle_Jerk),
                       meanStd_Body_Acceleration_X = mean(Std_Body_Acceleration_X),
                       meanStd_Body_Acceleration_Y = mean(Std_Body_Acceleration_Y),
                       meanStd_Body_Acceleration_Z = mean(Std_Body_Acceleration_Z),
                       meanStd_Gravity_Acceleration_X = mean(Std_Gravity_Acceleration_X),
                       meanStd_Gravity_Acceleration_Y = mean(Std_Gravity_Acceleration_Y),
                       meanStd_Gravity_Acceleration_Z= mean(Std_Gravity_Acceleration_Z),
                       meanStd_Body_Accel_Jerk_X= mean(Std_Body_Accel_Jerk_X),
                       meanStd_Body_Accel_Jerk_Y= mean(Std_Body_Accel_Jerk_Y),
                       meanStd_Body_Accel_Jerk_Z= mean(Std_Body_Accel_Jerk_Z),
                       meanStd_Body_Angle_X= mean(Std_Body_Angle_X),
                       meanStd_Body_Angle_Y= mean(Std_Body_Angle_Y),
                       meanStd_Body_Angle_Z= mean(Std_Body_Angle_Z),
                       meanStd_Body_Angle_Jerk_X= mean(Std_Body_Angle_Jerk_X),
                       meanStd_Body_Angle_Jerk_Y= mean(Std_Body_Angle_Jerk_Y),
                       meanStd_Body_Angle_Jerk_Z= mean(Std_Body_Angle_Jerk_Z),
                       meanStd_Magnitude_Body_Accel= mean(Std_Magnitude_Body_Accel),
                       meanStd_Magnitude_Gravity_Accel= mean(Std_Magnitude_Gravity_Accel),
                       meanStd_Magnitude_Body_Accel_Jerk= mean(Std_Magnitude_Body_Accel_Jerk),
                       meanStd_Magnitude_Body_Angle= mean(Std_Magnitude_Body_Angle),
                       meanStd_Magnitude_Body_Angle_Jerk= mean(Std_Magnitude_Body_Angle_Jerk),
                       meanStd_FFT_Body_Acceleration_X= mean(Std_FFT_Body_Acceleration_X),
                       meanStd_FFT_Body_Acceleration_Y= mean(Std_FFT_Body_Acceleration_Y),
                       meanStd_FFT_Body_Acceleration_Z= mean(Std_FFT_Body_Acceleration_Z),
                       meanStd_FFT_Body_Accel_Jerk_X= mean(Std_FFT_Body_Accel_Jerk_X),
                       meanStd_FFT_Body_Accel_Jerk_Y= mean(Std_FFT_Body_Accel_Jerk_Y),
                       meanStd_FFT_Body_Accel_Jerk_Z= mean(Std_FFT_Body_Accel_Jerk_Z),
                       meanStd_FFT_Body_Angle_X= mean(Std_FFT_Body_Angle_X),
                       meanStd_FFT_Body_Angle_Y= mean(Std_FFT_Body_Angle_Y),
                       meanStd_FFT_Body_Angle_Z= mean(Std_FFT_Body_Angle_Z),
                       meanStd_FFT_Magnitude_Body_Accel= mean(Std_FFT_Magnitude_Body_Accel),
                       meanStd_FFT_Magnitude_Body_Accel_Jerk= mean(Std_FFT_Magnitude_Body_Accel_Jerk),
                       meanStd_FFT_Magnitude_Body_Angle= mean(Std_FFT_Magnitude_Body_Angle),
                       meanStd_FFT_Magnitude_Body_Angle_Jerk= mean(Std_FFT_Magnitude_Body_Angle_Jerk))
write.table(tidy_data, file = "MarysTidyData.txt", row.names = FALSE)
