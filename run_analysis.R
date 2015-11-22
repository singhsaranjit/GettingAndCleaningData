run_analysis <- function(download = FALSE) {

    if (download) {
        # download and unzip data
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "ProjectDataset.zip")
        unzip("ProjectDataset.zip")
    }
    
    # read the test dataset
    subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
    y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
    
    # read the train dataset
    subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
    y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
    
    # merge the training and the test sets to create one data set
    ds <- rbind(cbind(subject_test, y_test, x_test), cbind(subject_train, y_train, x_train))
    rm(subject_test, subject_train, x_test, x_train, y_test, y_train)
    
    # label the data set with descriptive variable names
    features <- read.table("./UCI HAR Dataset/features.txt")
    names(ds) <- c("subject", "label", as.character(features[,2]))
    
    # get names of columns containing mean() or std()
    cols <- sort(c(grep("mean()", features[,2], fixed = TRUE), grep("std()", features[,2], fixed = TRUE)))
    rm(features)
    # create list of column numbers required in the final dataset
    cols <- c(c(1, 2), cols + 2)
    # extract only mean and standard deviation measurements, labels and subjects
    ds <- ds[, cols]
    rm(cols)
    
    # use descriptive activity names to name the activities in the data set
    activities <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("label", "activity"))
    ds <- merge(ds, activities, by.x = "label", by.y = "label", all = TRUE)
    ds <- ds[, -1]
    
    # creates a second, independent tidy data set with the average of each variable for each activity and each subject
    library(dplyr)
    tidyds <- summarise_each(group_by(ds, activity, subject), funs(mean))
    
    
    # write tidy dataset to file for project submission
    #write.table(tidyds, file = "project_tidyds.txt", row.names = FALSE)
    
}
