This README file explains why the 'getting-and-cleaning-data-assignment repository' has been created. 

The assignment for the Getting and Cleaning Data Course Project requires;
* a tidy dataset
* a GitHub repository that contains; 
  - the code file (run_analysis.R) 
  - the README.md file 
  - the code book (CodeBook.md)

For this purpose, the data collected from the accelerometers from the Samsung Galaxy S smartphone was downloaded from this link: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following files are present in the data:
* X_train.txt
* y_train.txt
* X_test.txt
* y_test.txt
* subject_test.txt
* subject_train.txt
* features.txt
* activity_labels.txt

Next, an R script (run_analysis.R) that does the following was created.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The detailed explanation about the code that does the steps mentioned above can be found in the CodeBook.md file. 
