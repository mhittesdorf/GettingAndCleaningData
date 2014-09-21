# Getting and Cleaning Data - Course Project Code Book

## Input Data

The raw data for this analysis was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. A full description of the study that produced this data is at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

## Procedure
The output file 'means_by_activity_and_subject.txt' was produced by the script 'run_analysis.R', which performs the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The tidy data set produced in step 5 is written to disk with the write.table() command where row.names = FALSE

To execute the script, first set the R working directory to the 'UCI HAR Dataset' subdirectory, source the 'run_analysis.R' script then run the function 'merge_train_and_test_and_summarize()'. 

## Variable definitions

The output file contains the following variables, which serve as the column names for the file.
 
Activity_Name - the activity performed by the test subject. Valid values are defined in the file 'activity_labels.txt' supplied with the raw data.
Subject - a unique identifier assigned to each test subject

The following fields are defined in the file 'features_info.txt' also supplied with the raw data. Note that the accelerometer measurements (i.e. those with 'acc' in the variable name) have units of standard gravity (g), while the gyroscopic measurements (i.e. those witih Gyro in the variable name) have units of radians/sec. 

1.  tBodyAcc-mean()-X
2.  tBodyAcc-mean()-Y
3.  tBodyAcc-mean()-Z
4.  tGravityAcc-mean()-X
5.  tGravityAcc-mean()-Y
6.  tGravityAcc-mean()-Z
7.  tBodyAccJerk-mean()-X
8.  tBodyAccJerk-mean()-Y
9.  tBodyAccJerk-mean()-Z
10. tBodyGyro-mean()-X
11. tBodyGyro-mean()-Y
12. tBodyGyro-mean()-Z
13. tBodyGyroJerk-mean()-X
14. tBodyGyroJerk-mean()-Y
15. tBodyGyroJerk-mean()-Z
16. tBodyAccMag-mean()
17. tGravityAccMag-mean()
18. tBodyAccJerkMag-mean()
19. tBodyGyroMag-mean()
20. tBodyGyroJerkMag-mean()
21. fBodyAcc-mean()-X
22. fBodyAcc-mean()-Y
23. fBodyAcc-mean()-Z
24. fBodyAcc-meanFreq()-X
25. fBodyAcc-meanFreq()-Y
26. fBodyAcc-meanFreq()-Z
27. fBodyAccJerk-mean()-X
28. fBodyAccJerk-mean()-Y
29. fBodyAccJerk-mean()-Z
30. fBodyAccJerk-meanFreq()-X
31. fBodyAccJerk-meanFreq()-Y
32. fBodyAccJerk-meanFreq()-Z
33. fBodyGyro-mean()-X
34. fBodyGyro-mean()-Y
35. fBodyGyro-mean()-Z
36. fBodyGyro-meanFreq()-X
37. fBodyGyro-meanFreq()-Y
38. fBodyGyro-meanFreq()-Z
39. fBodyAccMag-mean()
40. fBodyAccMag-meanFreq()
41. fBodyBodyAccJerkMag-mean()
42. fBodyBodyAccJerkMag-meanFreq()
43. fBodyBodyGyroMag-mean()
44. fBodyBodyGyroMag-meanFreq()
45. fBodyBodyGyroJerkMag-mean()
46. fBodyBodyGyroJerkMag-meanFreq()
47. angle(tBodyAccMean,gravity)
48. angle(tBodyAccJerkMean),gravityMean)
49. angle(tBodyGyroMean,gravityMean)
50. angle(tBodyGyroJerkMean,gravityMean)
51. angle(X,gravityMean)
52. angle(Y,gravityMean)
53. angle(Z,gravityMean)
54. tBodyAcc-std()-X
55. tBodyAcc-std()-Y
56. tBodyAcc-std()-Z
57. tGravityAcc-std()-X
58. tGravityAcc-std()-Y
59. tGravityAcc-std()-Z
60. tBodyAccJerk-std()-X
61. tBodyAccJerk-std()-Y
62. tBodyAccJerk-std()-Z
63. tBodyGyro-std()-X
64. tBodyGyro-std()-Y
65. tBodyGyro-std()-Z
66. tBodyGyroJerk-std()-X
67. tBodyGyroJerk-std()-Y
68. tBodyGyroJerk-std()-Z
69. tBodyAccMag-std()
70. tGravityAccMag-std()
71. tBodyAccJerkMag-std()
72. tBodyGyroMag-std()
73. tBodyGyroJerkMag-std()
74. fBodyAcc-std()-X
75. fBodyAcc-std()-Y
76. fBodyAcc-std()-Z
77. fBodyAccJerk-std()-X
78. fBodyAccJerk-std()-Y
79. fBodyAccJerk-std()-Z
80. fBodyGyro-std()-X
81. fBodyGyro-std()-Y
82. fBodyGyro-std()-Z
83. fBodyAccMag-std()
84. fBodyBodyAccJerkMag-std()
85. fBodyBodyGyroMag-std()
86. fBodyBodyGyroJerkMag-std()
