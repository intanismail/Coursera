Getting and Cleaning Data
*************************

This is a README file for Getting and Cleaning Data Coursera course project.

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

How to run the run_analysis.R script
************************************

1. The data has been downloaded and can be found under Project/data directory. 

2. Copy this directory to your local directory i.e, Project/data or donwnload 
the data as mentioned above and unzip it to i.e, Project/data directory.

2. Copy run_analysis.R to the Project directory

3. Set working directory to Project directory in RStudio

4. Run run_analysis.R

5. The script will produce the result.txt file

6. View the result.txt file or use R to read the file as follow

   input <- read.table("result.txt", header = TRUE)
   
   View(input)
   
How does the run_analysis.R script work
***************************************

The run_analysis.R script does the following.

1.Merges the training and the test sets to create one data set.

2.Extracts only the measurements on the mean and standard deviation for each 
measurement. 

3.Uses descriptive activity names to name the activities in the data set.

4.Appropriately labels the data set with descriptive variable names. 

5.From the data set in step 4, creates a second,independent tidy data set with 
the average of each variable for each activity and each subject.

Refer to CodeBook.md for details on the variables, the data, and 
transformations to produce the tidy data set.