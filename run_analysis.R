library(dplyr)
library(data.table)

# download data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="data.zip", method="curl")
unzip(zipfile="data.zip", exdir="./data")

# read training data
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# read test data
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# read supporting data
feature_names <- read.table("./data/UCI HAR Dataset/features.txt")
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

# merge data 
features <- rbind(x_train, x_test)
activity <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

colnames(features) <- t(feature_names[2])
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"

fulldata <- cbind(features, activity, subject)

# extract only the mean and sd
mean_sd <- grep(".*[Mm]ean.* |.*[Ss]td.*", names(fulldata), ignore.case = TRUE)
required_columns <- c(mean_sd, 562, 563)

extracted_data <- fulldata[, required_columns]

#descriptive activity names
extracted_data$Activity <- as.character(extracted_data$Activity)
for(i in 1:6){
    extracted_data$Activity[extracted_data$Activity == i] <- as.character(activity_labels[i,2])
}
extracted_data$Activity <- as.factor(extracted_data$Activity)

# labels
names(extracted_data) 

# tidy dataset w/ the average of each variable for each activity and subject
extracted_data$Subject <- as.factor(extracted_data$Subject)
extracted_data <- data.table(extracted_data)

tidy_data <- aggregate(. ~Subject + Activity, extracted_data, mean)
tidy_data <- tidy_data[order(tidy_data$Subject, tidy_data$Activity),]
write.table(tidy_data, file = "tidy.txt", row.names = FALSE)
