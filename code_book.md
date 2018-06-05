# Code Book

## Data Source

The data come from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), comprising experiments carried out by 30 volunteers, ages 19 to 48, each performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone (Samsung Galaxy S II) on the waist. The experiments captured accelerometer and gyroscope data on 3-axial linear acceleration and 3-axial angular velocity. Observations from twenty-one subjects were used for training data and observations from nine subjects were used for test data.

## Output Data

The tidy_data.txt file is the output of the run_analysis.R script. The data contain a total of 180 observations with 88 variables.

### subject.id

Unique numeric identifier (1-30) for each subject in the experiment.

### activity

Experiment activity performed by subjects:

- LAYING
- SITTING
- STANDING
- WALKING
- WALKING_DOWNSTAIRS
- WALKING_UPSTAIRS

### measurement variables (columns 3–88)

Mean accelerometer measurements. See [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) code book for an explanation of these different variables.

- tBodyAccMeanX
- tBodyAccMeanY
- tBodyAccMeanZ
- tBodyAccStdX
- tBodyAccStdY
- tBodyAccStdZ
- tGravityAccMeanX
- tGravityAccMeanY
- tGravityAccMeanZ
- tGravityAccStdX
- tGravityAccStdY
- tGravityAccStdZ
- tBodyAccJerkMeanX
- tBodyAccJerkMeanY
- tBodyAccJerkMeanZ
- tBodyAccJerkStdX
- tBodyAccJerkStdY
- tBodyAccJerkStdZ
- tBodyGyroMeanX
- tBodyGyroMeanY
- tBodyGyroMeanZ
- tBodyGyroStdX
- tBodyGyroStdY
- tBodyGyroStdZ
- tBodyGyroJerkMeanX
- tBodyGyroJerkMeanY
- tBodyGyroJerkMeanZ
- tBodyGyroJerkStdX
- tBodyGyroJerkStdY
- tBodyGyroJerkStdZ
- tBodyAccMagMean
- tBodyAccMagStd
- tGravityAccMagMean
- tGravityAccMagStd
- tBodyAccJerkMagMean
- tBodyAccJerkMagStd
- tBodyGyroMagMean
- tBodyGyroMagStd
- tBodyGyroJerkMagMean
- tBodyGyroJerkMagStd
- fBodyAccMeanX
- fBodyAccMeanY
- fBodyAccMeanZ
- fBodyAccStdX
- fBodyAccStdY
- fBodyAccStdZ
- fBodyAccMeanFreqX
- fBodyAccMeanFreqY
- fBodyAccMeanFreqZ
- fBodyAccJerkMeanX
- fBodyAccJerkMeanY
- fBodyAccJerkMeanZ
- fBodyAccJerkStdX
- fBodyAccJerkStdY
- fBodyAccJerkStdZ
- fBodyAccJerkMeanFreqX
- fBodyAccJerkMeanFreqY
- fBodyAccJerkMeanFreqZ
- fBodyGyroMeanX
- fBodyGyroMeanY
- fBodyGyroMeanZ
- fBodyGyroStdX
- fBodyGyroStdY
- fBodyGyroStdZ
- fBodyGyroMeanFreqX
- fBodyGyroMeanFreqY
- fBodyGyroMeanFreqZ
- fBodyAccMagMean
- fBodyAccMagStd
- fBodyAccMagMeanFreq
- fBodyBodyAccJerkMagMean
- fBodyBodyAccJerkMagStd
- fBodyBodyAccJerkMagMeanFreq
- fBodyBodyGyroMagMean
- fBodyBodyGyroMagStd
- fBodyBodyGyroMagMeanFreq
- fBodyBodyGyroJerkMagMean
- fBodyBodyGyroJerkMagStd
- fBodyBodyGyroJerkMagMeanFreq
- angletBodyAccMeangravity
- angletBodyAccJerkMeangravityMean
- angletBodyGyroMeangravityMean
- angletBodyGyroJerkMeangravityMean
- angleXgravityMean
- angleYgravityMean
- angleZgravityMean