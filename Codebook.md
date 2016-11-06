# Code Book

This code book summarizes the resulting data fields in tidy.txt.

## Identifiers

1. subjectId - ID of the subject
2. activityId - ID of the activity
3. activityType - one of the 6 activities below
	i. WALKING
	ii. WALKING_UPSTAIRS
	iii. WALKING_DOWNSTAIRS
	iv. SITTING
	v. STANDING

	vi. LAYING


## Measurements
The 17 raw accelerometer and gyroscope 3-axial xyz signals are
1? tBodyAcc-XYZ
2? tGravityAcc-XYZ
3? tBodyAccJerk-XYZ
4? tBodyGyro-XYZ
5? tBodyGyroJerk-XYZ
6? tBodyAccMag
7? tGravityAccMag
8? tBodyAccJerkMag
9? tBodyGyroMag
10? tBodyGyroJerkMag
11? fBodyAcc-XYZ
12? fBodyAccJerk-XYZ
13? fBodyGyro-XYZ
14? fBodyAccMag
15? fBodyAccJerkMag
16? fBodyGyroMag
17? fBodyGyroJerkMag

The set of variables that were estimated from these signals are
1. mean(): Mean value
2. std(): Standard deviation
3. mad(): Median absolute deviation 
4. max(): Largest value in array
5. min(): Smallest value in array
6. sma(): Signal magnitude area
7. energy(): Energy measure. Sum of the squares divided by the number of values. 
8. iqr(): Interquartile range 
9. entropy(): Signal entropy
10. arCoeff(): Autorregresion coefficients with Burg order equal to 4
11. correlation(): correlation coefficient between two signals
12. maxInds(): index of the frequency component with largest magnitude
13. meanFreq(): Weighted average of the frequency components to obtain a mean frequency
14. skewness(): skewness of the frequency domain signal 
15. kurtosis(): kurtosis of the frequency domain signal 
16. bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
17. angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
18. gravityMean
19. tBodyAccMean
20. tBodyAccJerkMean
21. tBodyGyroMean
22. tBodyGyroJerkMean


## run_analysis.R measurements
We are interested only in measurements on mean() and std(). The 66 variables meeting these criteria are
1. fBodyAccJerk-mean()-X
2. fBodyAccJerk-mean()-Y
3. fBodyAccJerk-mean()-Z
4. fBodyAccJerk-std()-X
5. fBodyAccJerk-std()-Y
6. fBodyAccJerk-std()-Z
7. fBodyAccMag-mean()
8. fBodyAccMag-std()
9. fBodyAcc-mean()-X
10. fBodyAcc-mean()-Y
11. fBodyAcc-mean()-Z
12. fBodyAcc-std()-X
13. fBodyAcc-std()-Y
14. fBodyAcc-std()-Z
15. fBodyBodyAccJerkMag-mean()
16. fBodyBodyAccJerkMag-std()
17. fBodyBodyGyroJerkMag-mean()
18. fBodyBodyGyroJerkMag-std()
19. fBodyBodyGyroMag-mean()
20. fBodyBodyGyroMag-std()
21. fBodyGyro-mean()-X
22. fBodyGyro-mean()-Y
23. fBodyGyro-mean()-Z
24. fBodyGyro-std()-X
25. fBodyGyro-std()-Y
26. fBodyGyro-std()-Z
27. tBodyAccJerkMag-mean()
28. tBodyAccJerkMag-std()
29. tBodyAccJerk-mean()-X
30. tBodyAccJerk-mean()-Y
31. tBodyAccJerk-mean()-Z
32. tBodyAccJerk-std()-X
33. tBodyAccJerk-std()-Y
34. tBodyAccJerk-std()-Z
35. tBodyAccMag-mean()
36. tBodyAccMag-std()
37. tBodyAcc-mean()-X
38. tBodyAcc-mean()-Y
39. tBodyAcc-mean()-Z
40. tBodyAcc-std()-X
41. tBodyAcc-std()-Y
42. tBodyAcc-std()-Z
43. tBodyGyroJerkMag-mean()
44. tBodyGyroJerkMag-std()
45. tBodyGyroJerk-mean()-X
46. tBodyGyroJerk-mean()-Y
47. tBodyGyroJerk-mean()-Z
48. tBodyGyroJerk-std()-X
49. tBodyGyroJerk-std()-Y
50. tBodyGyroJerk-std()-Z
51. tBodyGyroMag-mean()
52. tBodyGyroMag-std()
53. tBodyGyro-mean()-X
54. tBodyGyro-mean()-Y
55. tBodyGyro-mean()-Z
56. tBodyGyro-std()-X
57. tBodyGyro-std()-Y
58. tBodyGyro-std()-Z
59. tGravityAccMag-mean()
60. tGravityAccMag-std()
61. tGravityAcc-mean()-X
62. tGravityAcc-mean()-Y
63. tGravityAcc-mean()-Z
64. tGravityAcc-std()-X
65. tGravityAcc-std()-Y
66. tGravityAcc-std()-Z
