# GettingAndCleaningData
This repository contains the code for Getting And Cleaning Data project submission.

# Files
1. run_analysis.R
Defines the function run_analysis() that analyzes data collected from accelerometers from the Samsung Galaxy S smartphone.

The function does the following and returns a tidy dataset generated in the last step.
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To execute the analysis, simply call run_analysis(). Source data is assumed to be in your working directory.
To download and unzip the source data before analysis, call run_analysis(download = TRUE). This will download and unzip the source data in your working directory before creating the tidy dataset.

2. CodeBook.md
A code book for run_analysis.R that describes the variables, the data, and transformations performed to clean up the data.
