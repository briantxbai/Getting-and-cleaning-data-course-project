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

Subjects - An identifier of the subject who carried out the experiment.<br> Activities - Links the measurements with the activity names.

Measurements
------------

The features selected for the raw database come from the accelerometer and gyroscope raw signals tAcc and tGyro. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. <br>

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerkXYZ and TimeBodyGyroscopeJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). <br>

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometerXYZ, FrequencyBodyAccelerometerJerkXYZ, FrequencyBodyGyroscopeXYZ, FrequencyBodyAccelerometerJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitude. <br>

These signals were used to estimate variables of the feature vector for each pattern:
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions. <br>

The set of variables that were estimated from these signals are: <br> Mean: Mean value<br> Std: Standard deviation <br>

The measurements of the new tidy data set created by run_analysis.R are the mean of each variable from the raw data set for each activity and each subject. The measurements are listed as follow:<br>

TimeBodyAccelerometerMeanX<br> TimeBodyAccelerometerMeanY<br> TimeBodyAccelerometerMeanZ<br> TimeBodyAccelerometerStdX<br> TimeBodyAccelerometerStdY<br> TimeBodyAccelerometerStdZ<br> TimeGravityAccelerometerMeanX<br> TimeGravityAccelerometerMeanY<br> TimeGravityAccelerometerMeanZ<br> TimeGravityAccelerometerStdX<br> TimeGravityAccelerometerStdY<br> TimeGravityAccelerometerStdZ<br> TimeBodyAccelerometerJerkMeanX<br> TimeBodyAccelerometerJerkMeanY<br> TimeBodyAccelerometerJerkMeanZ<br> TimeBodyAccelerometerJerkStdX<br> TimeBodyAccelerometerJerkStdY<br> TimeBodyAccelerometerJerkStdZ<br> TimeBodyGyroscopeMeanX<br> TimeBodyGyroscopeMeanY<br> TimeBodyGyroscopeMeanZ<br> TimeBodyGyroscopeStdX<br> TimeBodyGyroscopeStdY<br> TimeBodyGyroscopeStdZ<br> TimeBodyGyroscopeJerkMeanX<br> TimeBodyGyroscopeJerkMeanY<br> TimeBodyGyroscopeJerkMeanZ<br> TimeBodyGyroscopeJerkStdX<br> TimeBodyGyroscopeJerkStdY<br> TimeBodyGyroscopeJerkStdZ<br> TimeBodyAccelerometerMagnitudeMean<br> TimeBodyAccelerometerMagnitudeStd<br> TimeGravityAccelerometerMagnitudeMean<br> TimeGravityAccelerometerMagnitudeStd<br> TimeBodyAccelerometerJerkMagnitudeMean<br> TimeBodyAccelerometerJerkMagnitudeStd<br> TimeBodyGyroscopeMagnitudeMean<br> TimeBodyGyroscopeMagnitudeStd<br> TimeBodyGyroscopeJerkMagnitudeMean<br> TimeBodyGyroscopeJerkMagnitudeStd<br> FrequencyBodyAccelerometerMeanX<br> FrequencyBodyAccelerometerMeanY<br> FrequencyBodyAccelerometerMeanZ<br> FrequencyBodyAccelerometerStdX<br> FrequencyBodyAccelerometerStdY<br> FrequencyBodyAccelerometerStdZ<br> FrequencyBodyAccelerometerJerkMeanX<br> FrequencyBodyAccelerometerJerkMeanY<br> FrequencyBodyAccelerometerJerkMeanZ<br> FrequencyBodyAccelerometerJerkStdX<br> FrequencyBodyAccelerometerJerkStdY<br> FrequencyBodyAccelerometerJerkStdZ<br> FrequencyBodyGyroscopeMeanX<br> FrequencyBodyGyroscopeMeanY<br> FrequencyBodyGyroscopeMeanZ<br> FrequencyBodyGyroscopeStdX<br> FrequencyBodyGyroscopeStdY<br> FrequencyBodyGyroscopeStdZ<br> FrequencyBodyAccelerometerMagnitudeMean<br> FrequencyBodyAccelerometerMagnitudeStd<br> FrequencyBodyAccelerometerJerkMagnitudeMean<br> FrequencyBodyAccelerometerJerkMagnitudeStd<br> FrequencyBodyGyroscopeMagnitudeMean<br> FrequencyBodyGyroscopeMagnitudeStd<br> FrequencyBodyGyroscopeJerkMagnitudeMean<br> FrequencyBodyGyroscopeJerkMagnitudeStd<br>
