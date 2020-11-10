This code book explains the code found in the 'run_analysis.R' file in detail. 

The data was downloaded from the link below using download.file() function and then unzipped using unzip() function.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The information about the data is below. 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

In the dataset, there are 68 variables and 180 observations in total.

To create a tidy data from this raw data, the steps indicated in the assignment description were carried out and an R script was created.

The main sections in the script are specified by comments and the detailed information about these sections can be found below. 

* download data: downloads and unzips the UCI HAR zip file using download.file() and unzip() functions
* read training data: reads the training data as x_train, y_train and subject_train using read.table() function
* read test data: reads the test data as x_test, y_test and subject_test using read.table() function
* read supporting data: reads the supporting data (features and activity_labels) using read.table() function
* merge data: merges all data that have been read in previous comments using rbind() function and assigns it to a new data called 'fulldata'
              column names were also specified by colnames() function
* extract only the mean and sd: extracts only the columns that contain mean and std 
* descriptive activity names: names the activities using descriptive activity names
* labels: labels the data with specific variable names using names() function
* tidy dataset w/ the average of each variable for each activity and subject: creates an independent tidy data with the average of each variable      
                                                                              for each acitvity and each subject
                                                                              the final .txt file was created using write.table() function
                                                                              
                                                                             
