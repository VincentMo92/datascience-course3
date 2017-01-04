
==================================================================
Data Extraction and Analysis Using Smartphones Dataset
Version 1.0
==================================================================
Vincent Mo
HCI lab of Chongqing University
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 80-feature vector the average of each variable for each activity and each subject with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
note: all the records are given in one dataset.

The dataset includes the following files:
=========================================

- 'README.txt’

- ‘CodeBook.txt’: Describes the variables, the data, and transformations that we performed to clean up the data.

- ‘run_analysis.R’: process the dataset, and creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Notes: 
======
- The mean value and standard deviation of every feature are calculate, Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

- All the data used is from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. License by Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


