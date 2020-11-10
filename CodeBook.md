This code book explains the code found in the 'run_analysis.R' file in detail. 

The main sections in the code are specified by comments and the detailed information about these sections can be found below. 

* download data: downloads and unzips the UCI HAR zip file using download.file() and unzip() functions
* read training data: reads the training data as x_train, y_train and subject_train using read.table() function
* read test data: reads the test data as x_test, y_test and subject_test using read.table() function
* read supporting data: reads the supporting data (features and activity_labels) using read.table() function
* merge data: merges all data that have been read in previous comments using rbind() function and assigns it to a new data called 'fulldata'
              column names were also specified by colnames() function
* extract only the mean and sd: extracts only the columns that contain mean and std 
* descriptive activity names: names the activities using descriptive activity names
* labels: labels the data with specific variable names using names() function
* tidy dataset w/ the average of each variable for each activity and subject: creates an independent tidy data with the average of each variable for each acitvity and each subject
                                                                              the final .txt file was created using write.table() function
                                                                             
