==================================================================
Coursera - Getting and Cleaning Data - Course Project
==================================================================
Subset Human Activity Recognition Using Smartphones Dataset
==================================================================
Nicolaspel
==================================================================


Analysis:
======================================
The script run_analysis.R does the following:
- Merges the training and the test sets to create one data set. (see dataset included below)
- Extracts only the measurements on the mean and standard deviation (std) for each measurement
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


Output files:
======================================
- Output_Analysis_SignalsData.csv (1st tidy data set)
- AggSignalsData.csv (2st tidy data set)


Work performed to clean up the data 
==================================================================
** First Tidy Data set 
- Import all files
- Format column names. Removing "()", spaces and "-"
- Set column names
- Join the two data sets (Test & Train)
- Keep only the "Mean" and "Std" columns
- Add the activity column to the final tidy data set
- Export to the file Output_Analysis_SignalsData.csv

** Second Tidy Data set
- Aggregate the precedent tidy data set by mean of subject_no & activity_code
- Export to the file AggSignalsData.csv



For each record it is provided:
======================================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 66-feature vector with time (t) and frequency (f) domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


The dataset includes the following files:
=========================================
- 'README.md'
- 'CodeBook.md'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.