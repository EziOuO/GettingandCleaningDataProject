# Download the data set
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName <- "dataset.zip"
if(!file.exists(fileName)) {
        download.file(fileUrl, fileName, method = "curl")
}

# Unzip the file
unzip(fileName)

# Read two data sets
path <- "UCI HAR Dataset"
list.files(path, recursive = TRUE)
testActivity <- read.table(file.path(path, "test", "y_test.txt"))
trainActivity <- read.table(file.path(path, "train", "y_train.txt"))
testSubject <- read.table(file.path(path, "test", "subject_test.txt"))
trainSubject <- read.table(file.path(path, "train", "subject_train.txt"))
testFeatures <- read.table(file.path(path, "test", "X_test.txt"))
trainFeatures <- read.table(file.path(path, "train", "X_train.txt"))
featureNames <- read.table(file.path(path, "features.txt"), colClasses = "character")

# Merges the training and the test sets to create one data set
data <- rbind(
        cbind(trainSubject, trainFeatures, trainActivity), 
        cbind(testSubject, testFeatures, testActivity)
)
names(data) <- c("subject", featureNames$V2, "activity")
rm(featureNames, testActivity,testFeatures, testSubject, trainActivity, trainFeatures, trainSubject)

# Extracts only the measurements on the mean and standard deviation for each measurement
colnumsToKeep <- grepl("mean\\(\\)|std\\(\\)|subject|activity", colnames(data))
data <- data[, colnumsToKeep]

# Uses descriptive activity names to name the activities in the data set
activityNames <- read.table(file.path(path, "activity_labels.txt"))
data$activity <- factor(data$activity, levels = activityNames$V1, labels = activityNames$V2)

# Appropriately labels the data set with descriptive variable names
names(data)<-gsub("^t", "time", names(data))
names(data)<-gsub("^f", "frequency", names(data))
names(data)<-gsub("Acc", "Accelerometer", names(data))
names(data)<-gsub("Gyro", "Gyroscope", names(data))
names(data)<-gsub("Mag", "Magnitude", names(data))
names(data)<-gsub("BodyBody", "Body", names(data))

# Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject
library(dplyr)
data2 <- data %>%
        group_by(subject, activity) %>%
        summarize_all(mean)
write.table(data2, "tidy_data.txt", row.names = FALSE)
