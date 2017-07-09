# Code Book

This data set was obtained from the Human Activity Recognition Using Smartphones Data Set, http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, which is hosted by the UCI Machine Learning Repository. The files contain data on 30 volunteers aged 19-48 years who wore smartphones around the waist. Each subject performed six different acitivites (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while the 3-axial linear accelerations and 3-axial angular velocities. 70% of the subjects were used for generating the training data, while the remained 30% were used for the test data. These subjects were selected using a random sample.

The files that were used are as follows:

    README.txt              : Details of all the files in downloaded folder.
    features_info.txt       : Contains information about the variables used on the feature vector.
    features.txt            : List of all features. (Note: Features refers to the list of all measurement variables)
    activity_labels.txt     : Lists the activity ID and the corresponding activity name.
    train/X_train.txt       : Training data set of activites.
    train/y_train.txt       : Training activity ID labels.
    train/subject_train.txt : Each row identifies the subject (1-30) who performed the activity.
    test/X_test.txt         : Test data set of activities.
    test/y_test.txt         : Test activity ID labels
    test/subject_train.txt  : Each row identifies the subject (1-30) who performed the activity.

## Features

Note: The following is shared from the features.txt file as provided by the authors of the data set.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean()          :   Mean value
std()           :   Standard deviation
mad()           :   Median absolute deviation 
max()           :   Largest value in array
min()           :   Smallest value in array
sma()           :   Signal magnitude area
energy()        :   Energy measure. Sum of the squares divided by the number of values. 
iqr()           :   Interquartile range 
entropy()       :   Signal entropy
arCoeff()       :   Autorregresion coefficients with Burg order equal to 4
correlation()   :   correlation coefficient between two signals
maxInds()       :   index of the frequency component with largest magnitude
meanFreq()      :   Weighted average of the frequency components to obtain a mean frequency
skewness()      :   skewness of the frequency domain signal 
kurtosis()      :   kurtosis of the frequency domain signal 
bandsEnergy()   :   Energy of a frequency interval within the 64 bins of the FFT of each window.
angle()         :   Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

    gravityMean
    tBodyAccMean
    tBodyAccJerkMean
    tBodyGyroMean
    tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

# Data Manipulation

For this project, only the mean() and std() for each variable were kept. 

The following labels were renamed for clarity:

't' --> 'time'
'f' --> 'frequency'
'Acc' --> 'Accelerometor'
'Gyro' --> 'Gyroscope'
'Mag' --> 'Magnitude'
'BodyBody' --> 'Body'

# Tidy Data Set

The following variables are contained in the final, tidy data set tidy_data.txt:

subject	:	Subject ID
activity	:	Activity label
activity_id	:	Activity ID
timeBodyAccelerometer-mean()-X	:	Average of mean of time: Body Acceleration in X direction
timeBodyAccelerometer-mean()-Y	:	Average of mean of time: Body Acceleration in Y direction
timeBodyAccelerometer-mean()-Z	:	Average of mean of time: Body Acceleration in Z direction
timeBodyAccelerometer-std()-X	:	Average of standard deviation of time: Body Acceleration in X direction
timeBodyAccelerometer-std()-Y	:	Average of standard deviation of time: Body Acceleration in Y direction
timeBodyAccelerometer-std()-Z	:	Average of standard deviation of time: Body Acceleration in Z direction
timeGravityAccelerometer-mean()-X	:	Average of mean of time: Gravity Acceleration in X direction
timeGravityAccelerometer-mean()-Y	:	Average of mean of time: Gravity Acceleration in Y direction
timeGravityAccelerometer-mean()-Z	:	Average of mean of time: Gravity Acceleration in Z direction
timeGravityAccelerometer-std()-X	:	Average of standard deviation of time: Gravity Acceleration in X direction
timeGravityAccelerometer-std()-Y	:	Average of standard deviation of time: Gravity Acceleration in Y direction
timeGravityAccelerometer-std()-Z	:	Average of standard deviation of time: Gravity Acceleration in Z direction
timeBodyAccelerometerJerk-mean()-X	:	Average of mean of time: Jerk Acceleration in X direction
timeBodyAccelerometerJerk-mean()-Y	:	Average of mean of time: Jerk Acceleration in Y direction
timeBodyAccelerometerJerk-mean()-Z	:	Average of mean of time: Jerk Acceleration in Z direction
timeBodyAccelerometerJerk-std()-X	:	Average of standard deviation of time: Jerk Acceleration in X direction
timeBodyAccelerometerJerk-std()-Y	:	Average of standard deviation of time: Jerk Acceleration in Y direction
timeBodyAccelerometerJerk-std()-Z	:	Average of standard deviation of time: Jerk Acceleration in Z direction
timeBodyGyroscope-mean()-X	:	Average of mean of time: Body Gyroscope in X direction
timeBodyGyroscope-mean()-Y	:	Average of mean of time: Body Gyroscope in Y direction
timeBodyGyroscope-mean()-Z	:	Average of mean of time: Body Gyroscope in Z direction
timeBodyGyroscope-std()-X	:	Average of standard deviation of time: Body Gyroscope in X direction
timeBodyGyroscope-std()-Y	:	Average of standard deviation of time: Body Gyroscope in Y direction
timeBodyGyroscope-std()-Z	:	Average of standard deviation of time: Body Gyroscope in Z direction
timeBodyGyroscopeJerk-mean()-X	:	Average of mean of time: Jerk Gyroscope in X direction
timeBodyGyroscopeJerk-mean()-Y	:	Average of mean of time: Jerk Gyroscope in Y direction
timeBodyGyroscopeJerk-mean()-Z	:	Average of mean of time: Jerk Gyroscope in Z direction
timeBodyGyroscopeJerk-std()-X	:	Average of standard deviation of time: Jerk Gyroscope in X direction
timeBodyGyroscopeJerk-std()-Y	:	Average of standard deviation of time: Jerk Gyroscope in Y direction
timeBodyGyroscopeJerk-std()-Z	:	Average of standard deviation of time: Jerk Gyroscope in Z direction
timeBodyAccelerometerMagnitude-mean()	:	Average of mean of time: Body Acceleration magitude
timeBodyAccelerometerMagnitude-std()	:	Average of standard deviation of time: Body Acceleration magnitude
timeGravityAccelerometerMagnitude-mean()	:	Average of mean of time: Gravity Acceleration magitude
timeGravityAccelerometerMagnitude-std()	:	Average of standard deviation of time: Gravity Acceleration magnitude
timeBodyAccelerometerJerkMagnitude-mean()	:	Average of mean of time: Jerk Acceleration magitude
timeBodyAccelerometerJerkMagnitude-std()	:	Average of standard deviation of time: Jerk Acceleration magnitude
timeBodyGyroscopeMagnitude-mean()	:	Average of mean of time: Body Gyroscope magitude
timeBodyGyroscopeMagnitude-std()	:	Average of standard deviation of time: Body Gyroscope magnitude
timeBodyGyroscopeJerkMagnitude-mean()	:	Average of mean of time: Jerk Gyroscope magitude
timeBodyGyroscopeJerkMagnitude-std()	:	Average of standard deviation of time: Jerk Gyroscope magnitude
frequencyBodyAccelerometer-mean()-X	:	Average of mean of frequency: Body Acceleration in X direction
frequencyBodyAccelerometer-mean()-Y	:	Average of mean of frequency: Body Acceleration in Y direction
frequencyBodyAccelerometer-mean()-Z	:	Average of mean of frequency: Body Acceleration in Z direction
frequencyBodyAccelerometer-std()-X	:	Average of standard deviation of frequency: Body Acceleration in X direction
frequencyBodyAccelerometer-std()-Y	:	Average of standard deviation of frequency: Body Acceleration in Y direction
frequencyBodyAccelerometer-std()-Z	:	Average of standard deviation of frequency: Body Acceleration in Z direction
frequencyBodyAccelerometerJerk-mean()-X	:	Average of mean of frequency: Jerk Acceleration in X direction
frequencyBodyAccelerometerJerk-mean()-Y	:	Average of mean of frequency: Jerk Acceleration in Y direction
frequencyBodyAccelerometerJerk-mean()-Z	:	Average of mean of frequency: Jerk Acceleration in Z direction
frequencyBodyAccelerometerJerk-std()-X	:	Average of standard deviation of frequency: Jerk Acceleration in X direction
frequencyBodyAccelerometerJerk-std()-Y	:	Average of standard deviation of frequency: Jerk Acceleration in Y direction
frequencyBodyAccelerometerJerk-std()-Z	:	Average of standard deviation of frequency: Jerk Acceleration in Z direction
frequencyBodyGyroscope-mean()-X	:	Average of mean of frequency: Body Gyroscope in X direction
frequencyBodyGyroscope-mean()-Y	:	Average of mean of frequency: Body Gyroscope in Y direction
frequencyBodyGyroscope-mean()-Z	:	Average of mean of frequency: Body Gyroscope in Z direction
frequencyBodyGyroscope-std()-X	:	Average of standard deviation of frequency: Body Gyroscope in X direction
frequencyBodyGyroscope-std()-Y	:	Average of standard deviation of frequency: Body Gyroscope in Y direction
frequencyBodyGyroscope-std()-Z	:	Average of standard deviation of frequency: Body Gyroscope in Z direction
frequencyBodyAccelerometerMagnitude-mean()	:	Average of mean of frequency: Body Acceleration magitude
frequencyBodyAccelerometerMagnitude-std()	:	Average of standard deviation of frequency: Body Acceleration magnitude
frequencyBodyAccelerometerJerkMagnitude-mean()	:	Average of mean of frequency: Jerk Acceleration magitude
frequencyBodyAccelerometerJerkMagnitude-std()	:	Average of standard deviation of frequency: Jerk Acceleration magnitude
frequencyBodyGyroscopeMagnitude-mean()	:	Average of mean of frequency: Body Gyroscope magitude
frequencyBodyGyroscopeMagnitude-std()	:	Average of standard deviation of frequency: Body Gyroscope magnitude
frequencyBodyGyroscopeJerkMagnitude-mean()	:	Average of mean of frequency: Jerk Gyroscope magitude
frequencyBodyGyroscopeJerkMagnitude-std()	:	Average of standard deviation of frequency: Jerk Gyroscope magnitude
