# Getting and Cleaning Data Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

This repository contains the following files:

* `README.md`, this file, which provides an overview of the data set and how it was created.
* `tidy_data.txt`, which contains the data set.
* `CodeBook.md`, the code book, which describes the contents of the data set (data, variables and transformations used to generate the data).
* `run_analysis.R`, the R script that was used to create the data set (see the Creating the data set section below)

## Creating the data set

The R script run_analysis.R can be used to create the data set. It retrieves the source data set and transforms it to produce the final data set by implementing the following steps:

* Download and unzip source data if it doesn't exist.
* Unzip the file and read two data sets.
* Merge the training and the test sets to create one data set
* Extracts only the measurements on the mean and standard deviation for each measurement
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names
* Creates a second, independent tidy data set with the average of each variable 
for each activity and each subject called `tidy_data.text`