# Getting and Cleaning Data Course Project

if (!file.exists("Course Project")) {dir.create("Course Project")}

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              './Course Project/data.zip', mode = "wb")
unzip('./Course Project/data.zip', exdir = 'Course Project')

# Merge training and test sets
library(readr)
trainingset <- read.table('./Course Project/UCI HAR Dataset/train/X_train.txt')
traininglabel <- read.table('./Course Project/UCI HAR Dataset/train/y_train.txt')
trainingsubject <- read.table('./Course Project/UCI HAR Dataset/train/subject_train.txt')
training <- cbind(trainingset, trainingsubject, traininglabel) # combine training set and label

testset <- read.table('./Course Project/UCI HAR Dataset/test/X_test.txt')
testlabel <- read.table('./Course Project/UCI HAR Dataset/test/y_test.txt')
testsubject <- read.table('./Course Project/UCI HAR Dataset/test/subject_test.txt')
test <- cbind(testset, testsubject, testlabel) # combine test set and label

fulldata <- rbind(training, test) # combine training and test data

# Label columns with feature names, subject, and label (last two column)
featurenames <- read.table('./Course Project/UCI HAR Dataset/features.txt')
varnames <- c(featurenames$V2, "subject", "label")
colnames(fulldata) <- varnames

# Make features names more readable/intuitive
names(fulldata) <-gsub("^t", "time", names(fulldata))
names(fulldata) <-gsub("^f", "freq", names(fulldata))
names(fulldata) <-gsub("Acc", "Accelerometer", names(fulldata))
names(fulldata) <-gsub("Gyro", "Gyroscope", names(fulldata))
names(fulldata) <-gsub("Mag", "Magnitude", names(fulldata))
names(fulldata) <-gsub("BodyBody", "Body", names(fulldata))
 
# Extract only columns that are measurements of mean and standard deviation, and retain subject and label column
subset <- fulldata[, grep("mean|std|subject|label", names(fulldata))]

# Relabel activities with descriptive activity names
activities <- read.table('./Course Project/UCI HAR Dataset/activity_labels.txt')
colnames(activities) <- c('label','activity')
tidydata <- merge(subset, activities, by = "label")

# Create second, independent tidy data set with avg of each variable for each activity and each subject
library(dplyr)

summary <- tidydata %>%
            group_by(activity, subject) %>%
            summarize_all(mean, na.rm = TRUE)

toexclude <- c("activity","subject","label")
summary <- summary %>%
  gather(measure, mean, -toexclude)
summary$label <- NULL

write.table(summary, "./Course Project/summarytidydata.txt", row.name = FALSE)
