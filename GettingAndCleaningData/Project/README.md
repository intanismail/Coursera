Getting and Cleaning Data
*************************

This is a README file for Getting and Cleaning Data Coursera course project.

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

How to run the script
*********************

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