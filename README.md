Getting and cleaning data course project
================

This is the course project for the Getting and clearning data course. The repo contains:

1.  a tidy data set, tidy.txt
2.  a R script, run_analysis.R, processes the data set
3.  a code book that indicates all the variables and summaries calculated, along with units, and any other relevant information
4.  A README that explains the analysis files is clear and understandable

The run_analysis.R does the following processes:

1.  Download and load the raw data in the R script, the full description of the data used in this project can be found at <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>
2.  Extract the measurements on the mean and standard deviation for each measurement.
3.  Uses descriptive activity names to name the activities in the data set.
4.  Appropriately labels the data set with descriptive activity names.
5.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The data set tidy.txt is clean because

1.  Each variable you measure should be in one column
2.  Each different observation of that variable should be in a different row
3.  There is one table for the mean of variable
