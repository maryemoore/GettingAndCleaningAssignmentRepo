#Getting and Cleaning Coursera Assignment

The R code contained in this repo
1. Downloads zipped files from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
These files contain the data from an experiment performed on 30 people who were wearing a phone during 6 different activities.
Multiple recordings were taken during those activities, which are listed more completely in the README file provided with that document.

2. The files are unzipped and stored in the working directory

3. Each peice of information about the collected data is stored in a separate text file. 
These are each individually loaded into objects in the R environment and combined into a dataframe.

4. The columns (variables) from the dataset that refer to mean and standard deviations of measurements taken 
are selected and loaded into a new dataframe.

5. The activity code is replaced with descriptive names for each activity.

6. The variables are renamed with descriptive names.

7.  The data is summarized to show the mean of each of the mean and standard deviation values that were collected for each subject during each activity.

