Data Sources 
============

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data Extraction
===============

The data mentioned above is processed in following procedures:

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals taccx,taccy,taccz and tgyrox,tgyroy,tgyroz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyaccx/y/z and tgravityaccx/y/z) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerkx/y/z and tbodygyrojerkx/y/z). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyaccx/y/z, fbodyaccjerkx/y/z, fbodygyrox/y/z, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
‘x/y/z’ is used to denote 3-axial signals in the X, Y and Z directions.

tbodyaccx/y/ztgravityaccx/y/ztbodyaccjerkx/y/ztbodygyrox/y/ztbodygyrojerkx/y/ztbodyaccmagtgravityaccmagtbodyaccjerkmagtbodygyromagtbodygyrojerkmagfbodyaccx/y/zfbodyaccjerkx/y/zfbodygyrox/y/zfbodyaccmagfbodyaccjerkmagfbodygyromagfbodygyrojerkmag
The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

In the end, the average of each variable for each activity and each subject.

The complete list of variables of each feature vector is available in descriptive variable names.
