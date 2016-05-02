CodeBook
================

This code book summarises the variables and calculation of modified and updated dataset "tidy.txt". The dataset is organized by 2 indentifiers and 79 measurements.

Calculation summary
-------------------

1.  Extracts only the measurements on the mean and standard deviation for each measurement in the training and test data set.
2.  Combines the training/test data set, subjects and activities with the cbind() function, respectively.
3.  Merges the previous two combined training and test data set with rbind(), and add column names.
4.  Matches the activity names and IDs from activity\_labels.txt, and substitutes the IDs with names in the dataset.
5.  Generates a new dataset with all the average measures for each subject and activity type. The output file is called tidy.txt.

Indentifiers
------------

subjects - An identifier of the subject who carried out the experiment.<br> activities - Links the measurements with the activity names.

Measurements
------------

The features selected for the raw database come from the accelerometer and gyroscope raw signals tAcc and tGyro. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. <br>

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). <br>

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). <br>

These signals were used to estimate variables of the feature vector for each pattern:
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions. <br>

The set of variables that were estimated from these signals are: <br> mean: Mean value<br> std: Standard deviation <br>

The measurements of the new tidy data set created by run_analysis.R are the mean of each variable from the raw data set for each activity and each subject. The measurements are listed as follow:<br>

tbodyaccmeanx<br> tbodyaccmeany<br> tbodyaccmeanz<br> tbodyaccstdx<br> tbodyaccstdy<br> tbodyaccstdz<br> tgravityaccmeanx<br> tgravityaccmeany<br> tgravityaccmeanz<br> tgravityaccstdx<br> tgravityaccstdy<br> tgravityaccstdz<br> tbodyaccjerkmeanx<br> tbodyaccjerkmeany<br> tbodyaccjerkmeanz<br> tbodyaccjerkstdx<br> tbodyaccjerkstdy<br> tbodyaccjerkstdz<br> tbodygyromeanx<br> tbodygyromeany<br> tbodygyromeanz<br> tbodygyrostdx<br> tbodygyrostdy<br> tbodygyrostdz<br> tbodygyrojerkmeanx<br> tbodygyrojerkmeany<br> tbodygyrojerkmeanz<br> tbodygyrojerkstdx<br> tbodygyrojerkstdy<br> tbodygyrojerkstdz<br> tbodyaccmagmean<br> tbodyaccmagstd<br> tgravityaccmagmean<br> tgravityaccmagstd<br> tbodyaccjerkmagmean<br> tbodyaccjerkmagstd<br> tbodygyromagmean<br> tbodygyromagstd<br> tbodygyrojerkmagmean<br> tbodygyrojerkmagstd<br> fbodyaccmeanx<br> fbodyaccmeany<br> fbodyaccmeanz<br> fbodyaccstdx<br> fbodyaccstdy<br> fbodyaccstdz<br> fbodyaccmeanfreqx<br> fbodyaccmeanfreqy<br> fbodyaccmeanfreqz<br> fbodyaccjerkmeanx<br> fbodyaccjerkmeany<br> fbodyaccjerkmeanz<br> fbodyaccjerkstdx<br> fbodyaccjerkstdy<br> fbodyaccjerkstdz<br> fbodyaccjerkmeanfreqx<br> fbodyaccjerkmeanfreqy<br> fbodyaccjerkmeanfreqz<br> fbodygyromeanx<br> fbodygyromeany<br> fbodygyromeanz<br> fbodygyrostdx<br> fbodygyrostdy<br> fbodygyrostdz<br> fbodygyromeanfreqx<br> fbodygyromeanfreqy<br> fbodygyromeanfreqz<br> fbodyaccmagmean<br> fbodyaccmagstd<br> fbodyaccmagmeanfreq<br> fbodybodyaccjerkmagmean<br> fbodybodyaccjerkmagstd<br> fbodybodyaccjerkmagmeanfreq<br> fbodybodygyromagmean<br> fbodybodygyromagstd<br> fbodybodygyromagmeanfreq<br> fbodybodygyrojerkmagmean<br> fbodybodygyrojerkmagstd<br> fbodybodygyrojerkmagmeanfreq<br>
