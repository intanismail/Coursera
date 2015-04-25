# This script will collect and clean a set of data sets. Refer to README.md 
# for details on how to run the script to produce a tidy data set that can be
# used for later analysis. The CodeBook.md describe the details on the variables,
# the data, and transformations to produce the tidy data set.

# Step 1: Merges the training and the test sets to create one data set.
train <- read.table("data/train/X_train.txt")
test <- read.table("data/test/X_test.txt")
set <- rbind(train, test)
dim(set)
head(set)

train <- read.table("data/train/y_train.txt")
test <- read.table("data/test/y_test.txt")
labels <- rbind(train, test)
dim(labels)
head(labels)

train <- read.table("data/train/subject_train.txt")
test <- read.table("data/test/subject_test.txt")
subject <- rbind(train, test)
dim(subject)
head(subject)

# Step 2: Extracts only the measurements on the mean and standard deviation for 
# each measurement. 
features <- read.table("data/features.txt")
dim(features)
head(features)

mean_std <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
set <- set[, mean_std]
names(set) <- features[mean_std,2]
dim(set)
head(set)

# Step 3: Uses descriptive activity names to name the activities in the data set
activities <- read.table("data/activity_labels.txt")
dim(activities)
head(activities)

labels[, 1] <- activities[labels[, 1], 2]
names(labels) <- "activity"
head(labels)

# Step 4:
# Appropriately labels the data set with descriptive variable names. 
names(subject) <- "subject"
head(subject)

names(set)<-gsub("^t", "time", names(set))
names(set)<-gsub("^f", "frequency", names(set))
names(set)<-gsub("Acc", "Accelerometer", names(set))
names(set)<-gsub("Gyro", "Gyroscope", names(set))
names(set)<-gsub("Mag", "Magnitude", names(set))
names(set)<-gsub("BodyBody", "Body", names(set))
head(set)

df <- cbind(subject, labels, set)
dim(df)
head(df)

# Step 5: From the data set in step 4,creates a second,independent tidy data set 
# with the average of each variable for each activity and each subject.
library(plyr)
td <- aggregate(. ~subject + activity, df, mean)
td <- td[order(td$subject,td$activity),]
dim(td)
head(td)

write.table(td, file = "result.txt", row.name = FALSE)