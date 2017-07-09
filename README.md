# Getting and Cleaning Data - Course Project

This repository contains my files for the course project for Getting and Cleaning Data (https://www.coursera.org/). This project requires users to obtain zip file of mulitple data sets, combine these data sets, and reformat the data to make it user-friendly. The following cotains information about the data source, the manipulation of the data, the R code and the final clean data set. Information on creating this project can be found at David Hood's blog, https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/.

## Raw Data

The raw data can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. There were three major components to the raw data, each component with a respective test and training data set. The first component contains the subject data and is located in the subject_test.txt and subject_train.txt files. The second component is comprised of the activity files. The data is located in the y_test.txt and y_train.txt files while the labels for the activities is located activities_label.txt file. The third compenent is the features data and is located in the x_test.txt and x_train.txt files, while the labels for this data is located in features.txt.

## R Script

The R script is called Project4.R. This script downloads the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Upon downloading the zip file, the script extracts relevant files and stores them in a subdirectory called UCI HAR Dataset. Only the mean and standard deviation for the features data is kept. The script then merges the three components and relabels coded variables and variable headings. Finally, the script creates a clean data set.

## Code Book

The code book contains information concerning the final data, as well as the transformations performed on the data.
