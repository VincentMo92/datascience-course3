
==================================================================
Data Extraction and Analysis Using Smartphones Dataset
Version 1.0
==================================================================
Vincent Mo
HCI lab of Chongqing University

This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:
==================================================================

Download the dataset if it does not already exist in the working directory
Load the activity and feature info
Loads both the training and test datasets, keeping only those columns which reflect a mean or standard deviation
Loads the activity and subject data for each dataset, and merges those columns with the dataset
Merges the two datasets
Converts the activity and subject columns into factors
Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
The end result is shown in the file submissionDataSet.txt.


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

- ‘submissionDataSet.txt’: the tidy data after processing.
Notes: 
======
- The mean value and standard deviation of every feature are calculate, Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

- All the data used is from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. License by Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


