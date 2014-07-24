==================================================================
Transformations or work performed to clean up the data 
==================================================================
## First Tidy Data set ##############################
- Import all files
- Format column names. Removing "()", spaces and "-"
- Set column names
- Join the two data sets (Test & Train)
- Keep only the "Mean" and "Std" columns
- Add the activity column to the final tidy data set
- Create the file Output_Analysis_SignalsData.csv

## Second Tidy Data set ##############################
- Aggregate the precedent tidy data set by mean of subject_no & activity_code
- Create the file AggSignalsData.csv


==================================================================
Data used in experiment:
==================================================================
Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
Data Set Characteristics: Multivariate, Time-Series 
Number of Instances: 10299 
Area: Computer
Attribute Characteristics: N/A 
Number of Attributes: 69
Associated Tasks: Classification, Clustering 
Missing Values? N/A 


==================================================================
Variables used in experiment:
==================================================================

Time - body acceleration
Time - angular velocity vector (radians/second)
Time - Gravity Acceleration
Frequency - body acceleration
Frequency - angular velocity vector (radians/second)
Frequency - Gravity Acceleration


==================================================================
List of variables in Tidy Data Set:
==================================================================
1	subject_no
2	activity_code
3	activity
4	tBodyAcc_mean_X
5	tBodyAcc_mean_Y
6	tBodyAcc_mean_Z
7	tBodyAcc_std_X
8	tBodyAcc_std_Y
9	tBodyAcc_std_Z
10	tGravityAcc_mean_X
11	tGravityAcc_mean_Y
12	tGravityAcc_mean_Z
13	tGravityAcc_std_X
14	tGravityAcc_std_Y
15	tGravityAcc_std_Z
16	tBodyAccJerk_mean_X
17	tBodyAccJerk_mean_Y
18	tBodyAccJerk_mean_Z
19	tBodyAccJerk_std_X
20	tBodyAccJerk_std_Y
21	tBodyAccJerk_std_Z
22	tBodyGyro_mean_X
23	tBodyGyro_mean_Y
24	tBodyGyro_mean_Z
25	tBodyGyro_std_X
26	tBodyGyro_std_Y
27	tBodyGyro_std_Z
28	tBodyGyroJerk_mean_X
29	tBodyGyroJerk_mean_Y
30	tBodyGyroJerk_mean_Z
31	tBodyGyroJerk_std_X
32	tBodyGyroJerk_std_Y
33	tBodyGyroJerk_std_Z
34	tBodyAccMag_mean
35	tBodyAccMag_std
36	tGravityAccMag_mean
37	tGravityAccMag_std
38	tBodyAccJerkMag_mean
39	tBodyAccJerkMag_std
40	tBodyGyroMag_mean
41	tBodyGyroMag_std
42	tBodyGyroJerkMag_mean
43	tBodyGyroJerkMag_std
44	fBodyAcc_mean_X
45	fBodyAcc_mean_Y
46	fBodyAcc_mean_Z
47	fBodyAcc_std_X
48	fBodyAcc_std_Y
49	fBodyAcc_std_Z
50	fBodyAccJerk_mean_X
51	fBodyAccJerk_mean_Y
52	fBodyAccJerk_mean_Z
53	fBodyAccJerk_std_X
54	fBodyAccJerk_std_Y
55	fBodyAccJerk_std_Z
56	fBodyGyro_mean_X
57	fBodyGyro_mean_Y
58	fBodyGyro_mean_Z
59	fBodyGyro_std_X
60	fBodyGyro_std_Y
61	fBodyGyro_std_Z
62	fBodyAccMag_mean
63	fBodyAccMag_std
64	fBodyBodyAccJerkMag_mean
65	fBodyBodyAccJerkMag_std
66	fBodyBodyGyroMag_mean
67	fBodyBodyGyroMag_std
68	fBodyBodyGyroJerkMag_mean
69	fBodyBodyGyroJerkMag_std
