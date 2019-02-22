# Code book for Coursera *Getting and Cleaning Data* course project

The data set that this code book pertains to is located in the `tidy_data.txt` file of this repository.

See the `README.md` file of this repository for background information on this data set.

The structure of the data set is described in the [Data](#data) section, its variables are listed in the [Variables](#variables) section, and the transformations that were carried out to obtain the data set based on the source data are presented in the [Transformations](#transformations) section.

## Data <a name="data"></a>

The `tidy_data.txt` data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the [Variables](#variables) section, and the following rows contain the values of these variables. 

## Variables <a name="variables"></a>

Each row contains, for a given subject and activity, 79 averaged signal measurements.

### Identifiers <a name="identifiers"></a>

- `subject`

	Subject identifier, integer, ranges from 1 to 30.

- `activity`

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

### Average of measurements <a name="average-measurements"></a>

All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing `Accelerometer`) were made in *g*'s (9.81 m.s⁻²) and gyroscope measurements (variables containing `Gyroscope`) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing `Magnitude`) were calculated using the Euclidean norm.

The measurements are classified in two s:

- time signals (variables prefixed by `time`), resulting from the capture of accelerometer and gyroscope raw signals.

- Frequency- signals (variables prefixed by `frequency`), resulting from the application of a Fast Fourier Transform (FFT) to some of the time signals.

#### time signals

- Average time body acceleration in the X, Y and Z directions:

	- `timeBodyAccelerometerMeanX`
	- `timeBodyAccelerometerMeanY`
	- `timeBodyAccelerometerMeanZ`

- Standard deviation of the time body acceleration in the X, Y and Z directions:

	- `timeBodyAccelerometerStandardDeviationX`
	- `timeBodyAccelerometerStandardDeviationY`
	- `timeBodyAccelerometerStandardDeviationZ`

- Average time gravity acceleration in the X, Y and Z directions:

	- `timeGravityAccelerometerMeanX`
	- `timeGravityAccelerometerMeanY`
	- `timeGravityAccelerometerMeanZ`

- Standard deviation of the time gravity acceleration in the X, Y and Z directions:

	- `timeGravityAccelerometerStandardDeviationX`
	- `timeGravityAccelerometerStandardDeviationY`
	- `timeGravityAccelerometerStandardDeviationZ`

- Average timetime body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `timeBodyAccelerometerJerkMeanX`
	- `timeBodyAccelerometerJerkMeanY`
	- `timeBodyAccelerometerJerkMeanZ`

- Standard deviation of the time body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `timeBodyAccelerometerJerkStandardDeviationX`
	- `timeBodyAccelerometerJerkStandardDeviationY`
	- `timeBodyAccelerometerJerkStandardDeviationZ`

- Average time body angular velocity in the X, Y and Z directions:

	- `timeBodyGyroscopeMeanX`
	- `timeBodyGyroscopeMeanY`
	- `timeBodyGyroscopeMeanZ`

- Standard deviation of the time body angular velocity in the X, Y and Z directions:

	- `timeBodyGyroscopeStandardDeviationX`
	- `timeBodyGyroscopeStandardDeviationY`
	- `timeBodyGyroscopeStandardDeviationZ`

- Average time body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `timeBodyGyroscopeJerkMeanX`
	- `timeBodyGyroscopeJerkMeanY`
	- `timeBodyGyroscopeJerkMeanZ`

- Standard deviation of the time body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `timeBodyGyroscopeJerkStandardDeviationX`
	- `timeBodyGyroscopeJerkStandardDeviationY`
	- `timeBodyGyroscopeJerkStandardDeviationZ`

- Average and standard deviation of the time magnitude of body acceleration:

	- `timeBodyAccelerometerMagnitudeMean`
	- `timeBodyAccelerometerMagnitudeStandardDeviation`

- Average and standard deviation of the time magnitude of gravity acceleration:

	- `timeGravityAccelerometerMagnitudeMean`
	- `timeGravityAccelerometerMagnitudeStandardDeviation`

- Average and standard deviation of the time magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `timeBodyAccelerometerJerkMagnitudeMean`
	- `timeBodyAccelerometerJerkMagnitudeStandardDeviation`

- Average and standard deviation of the time magnitude of body angular velocity:

	- `timeBodyGyroscopeMagnitudeMean`
	- `timeBodyGyroscopeMagnitudeStandardDeviation`

- Average and standard deviation of the time magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `timeBodyGyroscopeJerkMagnitudeMean`
	- `timeBodyGyroscopeJerkMagnitudeStandardDeviation`

#### Frequency- signals

- Average frequency- body acceleration in the X, Y and Z directions:

	- `frequencyBodyAccelerometerMeanX`
	- `frequencyBodyAccelerometerMeanY`
	- `frequencyBodyAccelerometerMeanZ`

- Standard deviation of the frequency- body acceleration in the X, Y and Z directions:

	- `frequencyBodyAccelerometerStandardDeviationX`
	- `frequencyBodyAccelerometerStandardDeviationY`
	- `frequencyBodyAccelerometerStandardDeviationZ`

- Weighted average of the frequency components of the frequency- body acceleration in the X, Y and Z directions:

	- `frequencyBodyAccelerometerMeanFrequencyX`
	- `frequencyBodyAccelerometerMeanFrequencyY`
	- `frequencyBodyAccelerometerMeanFrequencyZ`

- Average frequency- body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyBodyAccelerometerJerkMeanX`
	- `frequencyBodyAccelerometerJerkMeanY`
	- `frequencyBodyAccelerometerJerkMeanZ`

- Standard deviation of the frequency- body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyBodyAccelerometerJerkStandardDeviationX`
	- `frequencyBodyAccelerometerJerkStandardDeviationY`
	- `frequencyBodyAccelerometerJerkStandardDeviationZ`

- Weighted average of the frequency components of the frequency- body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `frequencyBodyAccelerometerJerkMeanFrequencyX`
	- `frequencyBodyAccelerometerJerkMeanFrequencyY`
	- `frequencyBodyAccelerometerJerkMeanFrequencyZ`

- Average frequency- body angular velocity in the X, Y and Z directions:

	- `frequencyBodyGyroscopeMeanX`
	- `frequencyBodyGyroscopeMeanY`
	- `frequencyBodyGyroscopeMeanZ`

- Standard deviation of the frequency- body angular velocity in the X, Y and Z directions:

	- `frequencyBodyGyroscopeStandardDeviationX`
	- `frequencyBodyGyroscopeStandardDeviationY`
	- `frequencyBodyGyroscopeStandardDeviationZ`

- Weighted average of the frequency components of the frequency- body angular velocity in the X, Y and Z directions:

	- `frequencyBodyGyroscopeMeanFrequencyX`
	- `frequencyBodyGyroscopeMeanFrequencyY`
	- `frequencyBodyGyroscopeMeanFrequencyZ`

- Average, standard deviation, and weighted average of the frequency components of the frequency- magnitude of body acceleration:

	- `frequencyBodyAccelerometerMagnitudeMean`
	- `frequencyBodyAccelerometerMagnitudeStandardDeviation`
	- `frequencyBodyAccelerometerMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency- magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `frequencyBodyAccelerometerJerkMagnitudeMean`
	- `frequencyBodyAccelerometerJerkMagnitudeStandardDeviation`
	- `frequencyBodyAccelerometerJerkMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency- magnitude of body angular velocity:

	- `frequencyBodyGyroscopeMagnitudeMean`
	- `frequencyBodyGyroscopeMagnitudeStandardDeviation`
	- `frequencyBodyGyroscopeMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the frequency- magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `frequencyBodyGyroscopeJerkMagnitudeMean`
	- `frequencyBodyGyroscopeJerkMagnitudeStandardDeviation`
	- `frequencyBodyGyroscopeJerkMagnitudeMeanFrequency`

## Transformations <a name="transformations"></a>

The zip file containing the source data is located at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set.
1. The measurements on the mean and standard deviation (i.e. signals containing the strings `mean()` and `std()`) were extracted for each measurement, and the others were discarded.
1. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see [Identifiers](#identifiers) section).
1. The variable names were replaced with descriptive variable names (e.g. `tBodyAcc-mean()-X` was expanded to `timeBodyAccelerometerMeanX`), using the following set of rules:
	- The initial `f` and `t` were expanded to `frequency` and `time` respectively.
	- `Acc`, `Gyro`, `Mag`, were replaced with `Accelerometer`, `Gyroscope` and  `Magnitude`respectively.
	- Replaced (supposedly incorrect as per source's `features_info.txt` file) `BodyBody` with `Body`.
1. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the `run_analysis.R` R script (see `README.md` file for usage instructions).