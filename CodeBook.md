
=Codebook for Getting and Cleaning Data project=

This is the codebook for dataset produced as part of course project from "Getting and Cleaning Data" course.

The data for this project was obtained at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. Further descrpition of the original dataset is here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

==How the data was processed==

The data was uncompressed at a directory and then:

1. Train and test sets were merged to create one data set (file at /train and /test subdirectores);
2. Extracted measurements on the mean and standard deviation for each row (i.e, features descriptions contained the word "mean" or "std")
3. Joined the data obtained in step 2 with data from file "activity_labels" to obtain descriptive names for activities
4. Applied descriptive names to collumns of the dataset produced. For the measurement columns, the names were the same as the original dataset (contained in the file "features.txt")
5. From the data obtained in step 4, created the final dataset with the average of each variable for each activity and each subject.

==Information about the dataset==

Each row correspond to a Subject performing an Activity, identified by the SubjectId (first column) and Activity(second column).

All other columns are the MEANS of the measurements on the original data file.

Thus, the dataset has the following layout:

SubjectId
Activity
mean_of_tBodyAcc-mean()-X
mean_of_tBodyAcc-mean()-Y
mean_of_tBodyAcc-mean()-Z
mean_of_tBodyAcc-std()-X
mean_of_tBodyAcc-std()-Y
mean_of_tBodyAcc-std()-Z
mean_of_tGravityAcc-mean()-X
mean_of_tGravityAcc-mean()-Y
mean_of_tGravityAcc-mean()-Z
mean_of_tGravityAcc-std()-X
mean_of_tGravityAcc-std()-Y
mean_of_tGravityAcc-std()-Z
mean_of_tBodyAccJerk-mean()-X
mean_of_tBodyAccJerk-mean()-Y
mean_of_tBodyAccJerk-mean()-Z
mean_of_tBodyAccJerk-std()-X
mean_of_tBodyAccJerk-std()-Y
mean_of_tBodyAccJerk-std()-Z
mean_of_tBodyGyro-mean()-X
mean_of_tBodyGyro-mean()-Y
mean_of_tBodyGyro-mean()-Z
mean_of_tBodyGyro-std()-X
mean_of_tBodyGyro-std()-Y
mean_of_tBodyGyro-std()-Z
mean_of_tBodyGyroJerk-mean()-X
mean_of_tBodyGyroJerk-mean()-Y
mean_of_tBodyGyroJerk-mean()-Z
mean_of_tBodyGyroJerk-std()-X
mean_of_tBodyGyroJerk-std()-Y
mean_of_tBodyGyroJerk-std()-Z
mean_of_tBodyAccMag-mean()
mean_of_tBodyAccMag-std()
mean_of_tGravityAccMag-mean()
mean_of_tGravityAccMag-std()
mean_of_tBodyAccJerkMag-mean()
mean_of_tBodyAccJerkMag-std()
mean_of_tBodyGyroMag-mean()
mean_of_tBodyGyroMag-std()
mean_of_tBodyGyroJerkMag-mean()
mean_of_tBodyGyroJerkMag-std()
mean_of_fBodyAcc-mean()-X
mean_of_fBodyAcc-mean()-Y
mean_of_fBodyAcc-mean()-Z
mean_of_fBodyAcc-std()-X
mean_of_fBodyAcc-std()-Y
mean_of_fBodyAcc-std()-Z
mean_of_fBodyAcc-meanFreq()-X
mean_of_fBodyAcc-meanFreq()-Y
mean_of_fBodyAcc-meanFreq()-Z
mean_of_fBodyAccJerk-mean()-X
mean_of_fBodyAccJerk-mean()-Y
mean_of_fBodyAccJerk-mean()-Z
mean_of_fBodyAccJerk-std()-X
mean_of_fBodyAccJerk-std()-Y
mean_of_fBodyAccJerk-std()-Z
mean_of_fBodyAccJerk-meanFreq()-X
mean_of_fBodyAccJerk-meanFreq()-Y
mean_of_fBodyAccJerk-meanFreq()-Z
mean_of_fBodyGyro-mean()-X
mean_of_fBodyGyro-mean()-Y
mean_of_fBodyGyro-mean()-Z
mean_of_fBodyGyro-std()-X
mean_of_fBodyGyro-std()-Y
mean_of_fBodyGyro-std()-Z
mean_of_fBodyGyro-meanFreq()-X
mean_of_fBodyGyro-meanFreq()-Y
mean_of_fBodyGyro-meanFreq()-Z
mean_of_fBodyAccMag-mean()
mean_of_fBodyAccMag-std()
mean_of_fBodyAccMag-meanFreq()
mean_of_fBodyBodyAccJerkMag-mean()
mean_of_fBodyBodyAccJerkMag-std()
mean_of_fBodyBodyAccJerkMag-meanFreq()
mean_of_fBodyBodyGyroMag-mean()
mean_of_fBodyBodyGyroMag-std()
mean_of_fBodyBodyGyroMag-meanFreq()
mean_of_fBodyBodyGyroJerkMag-mean()
mean_of_fBodyBodyGyroJerkMag-std()
mean_of_fBodyBodyGyroJerkMag-meanFreq()
mean_of_angle(tBodyAccMean,gravity)
mean_of_angle(tBodyAccJerkMean),gravityMean)
mean_of_angle(tBodyGyroMean,gravityMean)
mean_of_angle(tBodyGyroJerkMean,gravityMean)
mean_of_angle(X,gravityMean)
mean_of_angle(Y,gravityMean)
mean_of_angle(Z,gravityMean)

The original dataset describes the features included in this dataset as follow:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. > 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). > 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). > 

> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.> 

> tBodyAcc-XYZ
> tGravityAcc-XYZ
> tBodyAccJerk-XYZ
> tBodyGyro-XYZ
> tBodyGyroJerk-XYZ
> tBodyAccMag
> tGravityAccMag
> tBodyAccJerkMag
> tBodyGyroMag
> tBodyGyroJerkMag
> fBodyAcc-XYZ
> fBodyAccJerk-XYZ
> fBodyGyro-XYZ
> fBodyAccMag
> fBodyAccJerkMag
> fBodyGyroMag
> fBodyGyroJerkMag> 

> The set of variables that were estimated from these signals are: > 

> mean(): Mean value
> std(): Standard deviation
