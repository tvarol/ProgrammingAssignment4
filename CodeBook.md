#CODEBOOK
The tidy data is derived from a bigger raw data set which includes
measurements for 30 volunteers, each was tracked for 6 activities.

* Original description of the data: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* Original source of the data: [Data_file.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Cleaning Up the Code
The transformation is done by running run_analysis.R script. Below are
the actions that this script performs:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##The Tidy Data
Tidy data can be found in tidy_data.txt file. The data contains 180 rows and
68 columns. Tidy data includes 66 measurements, each holds the average of that feature for each person
(`subjectID`) and for each activity (`activityName`).

###Identifiers
* `subjectID`: The number between 1-30, an ID for each of the 30 volunteers.
* `activityName`: Each of 6 tracked activities 
	* `WALKING`
	* `WALKING_UPSTAIRS` 
	* `WALKING_DOWNSTAIRS`
	* `SITTING`
	* `STANDING`
	* `LAYING`

##Measurements
* `TimeBodyAccMeanX`
* `TimeBodyAccMeanY`
* `TimeBodyAccMeanZ`
* `TimeBodyAccStandardDeviationX`
* `TimeBodyAccStandardDeviationY`
* `TimeBodyAccStandardDeviationZ`
* `TimeGravityAccMeanX`
* `TimeGravityAccMeanY`
* `TimeGravityAccMeanZ`
* `TimeGravityAccStandardDeviationX`
* `TimeGravityAccStandardDeviationY`
* `TimeGravityAccStandardDeviationZ`
* `TimeBodyAccJerkMeanX`
* `TimeBodyAccJerkMeanY`
* `TimeBodyAccJerkMeanZ`
* `TimeBodyAccJerkStandardDeviationX`
* `TimeBodyAccJerkStandardDeviationY`
* `TimeBodyAccJerkStandardDeviationZ`
* `TimeBodyGyroscopeMeanX`
* `TimeBodyGyroscopeMeanY`
* `TimeBodyGyroscopeMeanZ`
* `TimeBodyGyroscopeStandardDeviationX`
* `TimeBodyGyroscopeStandardDeviationY`
* `TimeBodyGyroscopeStandardDeviationZ`
* `TimeBodyGyroscopeJerkMeanX`
* `TimeBodyGyroscopeJerkMeanY`
* `TimeBodyGyroscopeJerkMeanZ`
* `TimeBodyGyroscopeJerkStandardDeviationX`
* `TimeBodyGyroscopeJerkStandardDeviationY`
* `TimeBodyGyroscopeJerkStandardDeviationZ`
* `TimeBodyAccMagnitudeMean`
* `TimeBodyAccMagnitudeStandardDeviation`
* `TimeGravityAccMagnitudeMean`
* `TimeGravityAccMagnitudeStandardDeviation`
* `TimeBodyAccJerkMagnitudeMean`
* `TimeBodyAccJerkMagnitudeStandardDeviation`
* `TimeBodyGyroscopeMagnitudeMean`
* `TimeBodyGyroscopeMagnitudeStandardDeviation`
* `TimeBodyGyroscopeJerkMagnitudeMean`
* `TimeBodyGyroscopeJerkMagnitudeStandardDeviation`
* `FrequencyBodyAccMeanX`
* `FrequencyBodyAccMeanY`
* `FrequencyBodyAccMeanZ`
* `FrequencyBodyAccStandardDeviationX`
* `FrequencyBodyAccStandardDeviationY`
* `FrequencyBodyAccStandardDeviationZ`
* `FrequencyBodyAccJerkMeanX`
* `FrequencyBodyAccJerkMeanY`
* `FrequencyBodyAccJerkMeanZ`
* `FrequencyBodyAccJerkStandardDeviationX`
* `FrequencyBodyAccJerkStandardDeviationY`
* `FrequencyBodyAccJerkStandardDeviationZ`
* `FrequencyBodyGyroscopeMeanX`
* `FrequencyBodyGyroscopeMeanY`
* `FrequencyBodyGyroscopeMeanZ`
* `FrequencyBodyGyroscopeStandardDeviationX`
* `FrequencyBodyGyroscopeStandardDeviationY`
* `FrequencyBodyGyroscopeStandardDeviationZ`
* `FrequencyBodyAccMagnitudeMean`
* `FrequencyBodyAccMagnitudeStandardDeviation`
* `FrequencyBodyBodyAccJerkMagnitudeMean`
* `FrequencyBodyBodyAccJerkMagnitudeStandardDeviation`
* `FrequencyBodyBodyGyroscopeMagnitudeMean`
* `FrequencyBodyBodyGyroscopeMagnitudeStandardDeviation`
* `FrequencyBodyBodyGyroscopeJerkMagnitudeMean`
* `FrequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation`





