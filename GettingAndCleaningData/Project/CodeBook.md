Getting and Cleaning Data
*************************

This is a CodeBook file for Getting and Cleaning Data Coursera course project.

run_analysis.R script details
*****************************

- The train and test set (set) data frame dimension is 10299x561
- The train and test labels (labels) data frame dimension is 10299x1
- The train and test subject (subject) data frame dimension is 10299x1

- The features (features) data frame dimension is 561x2
- Out of 561 rows, there are 66 rows for mean and standard deviation measurement
- Apply the column names for (set) data frame to the mean and standard deviation 
measurement names

- The activities (activities) data frame dimension is 6x2
- Apply activity names for (labels) data frame with descriptive activity names
- Rename the (labels) data frame column name to 'activity'

- Rename the (subject) data frame column name to 'subject'
- Rename the (set) data frame column names with descriptive variable names 
  * prefix t is replaced by time
  * prefix f is replaced by frequency
  * Acc is replaced by Accelerometer
  * Gyro is replaced by Gyroscope
  * Mag is replaced by Magnitude
  * BodyBody is replaced by Body
- Merge the (set), (labels) and (subject) data frames to create one data set

- Compute the average of each variable for each subject and each activity to
produce tidy data set
- Order the data set by subject and activity
- Write the output to the result.txt file 