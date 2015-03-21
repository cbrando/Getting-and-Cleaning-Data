# Getting-and-Cleaning-Data
Repository for the course project of the Coursera's Getting and Cleaning Data

Introduction
------------
This repository contains my work for the course project of the Coursera’s  "Getting and Cleaning data" course.
The third course of the Data Science specialization.

Original files
-------------
All the data used in my work is contained in the following files:

X_train.txt
y_train.txt
X_test.txt
y_test.txt
subject_train.txt
subject_test.txt
activity_labels.txt
features.txt

These files are part of a data set available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description is available at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

These data was collected from the embedded accelerometers and gyroscopes inside Samsung Galaxy S smartphones used by 30 volunteers.

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The R script
-------------

The R script “run_analysis.R” performs the following actions on the above mentioned files:
1. Merges the training and the test sets to create one data set. In order to perform this operation all the required files must be saved at the working directory of the R project where the script is used.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3.  Uses descriptive activity names to name the activities in the data set. The six names in the “activity_labels.txt” file were used.
4. Appropriately labels the data set with descriptive variable names. The original names in the “features.txt” file were used as variable names after converting them to lower case and eliminating punctuation and special characters. 
5. From the data set in step 4, creates a second, independent tidy data (tidydata2) set with the average of each variable for each activity and each subject.
The script save the final data set “tidydata2”to a text file named “tidydata2.txt”.


