## run_analysis() codebook
This is the codebook for the run_analysis() function defined in run_analysis.R in this repository.

## Source Dataset
The data used for analysis was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Transformation
The function performs the following data transformations on the source data.

1. Merges the training and the test sets to create one data set.
2. Appropriately labels the data set with descriptive variable names. 
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the data set.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Output Data
The following data elements are returned. 

activity - Activity name.
subject - Subject.
tBodyAcc-mean()-X - Mean of tBodyAcc-mean()-X
tBodyAcc-mean()-Y - Mean of tBodyAcc-mean()-Y
tBodyAcc-mean()-Z - Mean of tBodyAcc-mean()-Z
tBodyAcc-std()-X - Mean of tBodyAcc-std()-X
tBodyAcc-std()-Y - Mean of tBodyAcc-std()-Y
tBodyAcc-std()-Z - Mean of tBodyAcc-std()-Z
tGravityAcc-mean()-X - Mean of tGravityAcc-mean()-X
tGravityAcc-mean()-Y - Mean of tGravityAcc-mean()-Y
tGravityAcc-mean()-Z - Mean of tGravityAcc-mean()-Z
tGravityAcc-std()-X - Mean of tGravityAcc-std()-X
tGravityAcc-std()-Y - Mean of tGravityAcc-std()-Y
tGravityAcc-std()-Z - Mean of tGravityAcc-std()-Z
tBodyAccJerk-mean()-X - Mean of tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y - Mean of tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z - Mean of tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X - Mean of tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y - Mean of tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z - Mean of tBodyAccJerk-std()-Z
tBodyGyro-mean()-X - Mean of tBodyGyro-mean()-X
tBodyGyro-mean()-Y - Mean of tBodyGyro-mean()-Y
tBodyGyro-mean()-Z - Mean of tBodyGyro-mean()-Z
tBodyGyro-std()-X - Mean of tBodyGyro-std()-X
tBodyGyro-std()-Y - Mean of tBodyGyro-std()-Y
tBodyGyro-std()-Z - Mean of tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X - Mean of tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y - Mean of tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z - Mean of tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X - Mean of tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y - Mean of tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z - Mean of tBodyGyroJerk-std()-Z
tBodyAccMag-mean() - Mean of tBodyAccMag-mean()
tBodyAccMag-std() - Mean of tBodyAccMag-std()
tGravityAccMag-mean() - Mean of tGravityAccMag-mean()
tGravityAccMag-std() - Mean of tGravityAccMag-std()
tBodyAccJerkMag-mean() - Mean of tBodyAccJerkMag-mean()
tBodyAccJerkMag-std() - Mean of tBodyAccJerkMag-std()
tBodyGyroMag-mean() - Mean of tBodyGyroMag-mean()
tBodyGyroMag-std() - Mean of tBodyGyroMag-std()
tBodyGyroJerkMag-mean() - Mean of tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std() - Mean of tBodyGyroJerkMag-std()
fBodyAcc-mean()-X - Mean of fBodyAcc-mean()-X
fBodyAcc-mean()-Y - Mean of fBodyAcc-mean()-Y
fBodyAcc-mean()-Z - Mean of fBodyAcc-mean()-Z
fBodyAcc-std()-X - Mean of fBodyAcc-std()-X
fBodyAcc-std()-Y - Mean of fBodyAcc-std()-Y
fBodyAcc-std()-Z - Mean of fBodyAcc-std()-Z
fBodyAccJerk-mean()-X - Mean of fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y - Mean of fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z - Mean of fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X - Mean of fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y - Mean of fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z - Mean of fBodyAccJerk-std()-Z
fBodyGyro-mean()-X - Mean of fBodyGyro-mean()-X
fBodyGyro-mean()-Y - Mean of fBodyGyro-mean()-Y
fBodyGyro-mean()-Z - Mean of fBodyGyro-mean()-Z
fBodyGyro-std()-X - Mean of fBodyGyro-std()-X
fBodyGyro-std()-Y - Mean of fBodyGyro-std()-Y
fBodyGyro-std()-Z - Mean of fBodyGyro-std()-Z
fBodyAccMag-mean() - Mean of fBodyAccMag-mean()
fBodyAccMag-std() - Mean of fBodyAccMag-std()
fBodyBodyAccJerkMag-mean() - Mean of fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std() - Mean of fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean() - Mean of fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std() - Mean of fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean() - Mean of fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std() - Mean of fBodyBodyGyroJerkMag-std()

## Usage
```
# returns the tidy dataset named tidyds 
tidyds <- run_analysis()

# downloads the source data and unzips it in the working directory, before transforming the data and returning the tidy dataset named tidyds
tidyds <- run_analysis(download = TRUE)
```
