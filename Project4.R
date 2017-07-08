# Must install the following packages before loading libraries: dplyr, plyr, knitr #

library(dplyr)
library(plyr)
library(knitr)


# Creates a folder called "Project 4 Data" under the working directory, if one does not #
# already exist. #

if(!file.exists("./Project 4 Data")){dir.create("./Project 4 Data")}

# Downloads data file from URL and stores in previously created folder. Then unzips files. #

file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file_url,destfile="./Project 4 Data/Dataset.zip")
unzip(zipfile="./Project 4 Data/Dataset.zip",exdir="./Project 4 Data")

# Retrieves list of files from zipped folder.  #

data_location <- file.path("./Project 4 Data" , "UCI HAR Dataset")
files<-list.files(data_location, recursive=TRUE)
files

# Read the test and train activity data files #

activity_test  <- read.table(file.path(data_location, "test" , "Y_test.txt" ),header = FALSE)
activity_train <- read.table(file.path(data_location, "train", "Y_train.txt"),header = FALSE)

# Read the test and train subject data files #

subject_train <- read.table(file.path(data_location, "train", "subject_train.txt"),header = FALSE)
subject_test  <- read.table(file.path(data_location, "test" , "subject_test.txt"),header = FALSE)

# Read the test and train features data files #

features_test  <- read.table(file.path(data_location, "test" , "X_test.txt" ),header = FALSE)
features_train <- read.table(file.path(data_location, "train", "X_train.txt"),header = FALSE)

# Combine respective test and train data sets by matching rows #

subject_data <- rbind(subject_train, subject_test)
activity_data <- rbind(activity_train, activity_test)
features_data <- rbind(features_train, features_test)

# Rename variables in each data set. Note that the names of the variables for the features #
# data set comes from a separate .txt file called features.txt#

names(subject_data)<-c("subject")
names(activity_data)<- c("activity_id")
features_names <- read.table(file.path(data_location, "features.txt"),head=FALSE)
names(features_data)<- features_names$V2

# Merge all data sets by column #

combine_subject_activity <- cbind(subject_data, activity_data)
combined_data <- cbind(features_data, combine_subject_activity)

# Extracts only names of features similar to mean() or std() and combines this with data frame #
# to create a subset that only includes features on mean and standard deviation. #


extract_features_names<-features_names$V2[grep("mean\\(\\)|std\\(\\)", features_names$V2)]
selected_names <- c(as.character(extract_features_names), "subject", "activity_id" )
combined_data <- subset(combined_data,select=selected_names)

# Relabel activity headers with descriptive names #

activity_names <- read.table(file.path(data_location, "activity_labels.txt"),header = FALSE)
colnames(activity_names)<- c("activity_id","activity")
data <- merge(x=combined_data, y=activity_names, by="activity_id")

# Relabel feature headers with descriptive names #

names(data)<-gsub("^t", "time", names(data))
names(data)<-gsub("^f", "frequency", names(data))
names(data)<-gsub("Acc", "Accelerometer", names(data))
names(data)<-gsub("Gyro", "Gyroscope", names(data))
names(data)<-gsub("Mag", "Magnitude", names(data))
names(data)<-gsub("BodyBody", "Body", names(data))

# Creates a clean data set with the mean of each variable extracted. Stores in a file #
# name tidy_data.txt under working directory #

Clean_data<-aggregate(. ~subject + activity, data, mean)
Clean_data<-Clean_data[order(Clean_data$subject,Clean_data$activity),]
write.table(Clean_data, file = "tidy_data.txt",row.name=FALSE)


