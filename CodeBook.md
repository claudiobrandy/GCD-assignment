## GCD course - Final assignment Code Book

### The Tidy Dataframe Variables

No.|Variable|Definition
---|--------|----------
1  |"Subject"|identifies each of the 30 subjects in the experiment
2  |"Activity"|name of each of the 6 summarized activities for the subject
3  |"tBodyAcc_mean_X"|body accelerometer X-axial raw signals mean
4  |"tBodyAcc_mean_Y"|body accelerometer Y-axial raw signals mean
5  |"tBodyAcc_mean_Z"|body accelerometer Z-axial raw signals mean
6  |"tBodyAcc_std_X"|body accelerometer X-axial raw signals sdev
7  |"tBodyAcc_std_Y"|body accelerometer Y-axial raw signals sdev
8  |"tBodyAcc_std_Z"|body accelerometer Z-axial raw signals sdev
9  |"tGravityAcc_mean_X"|gravity accelerometer X-axial raw signals mean
10 |"tGravityAcc_mean_Y"|gravity accelerometer Y-axial raw signals mean
11 |"tGravityAcc_mean_Z"|gravity accelerometer Z-axial raw signals mean
12 |"tGravityAcc_std_X"|gravity accelerometer X-axial raw signals sdev
13 |"tGravityAcc_std_Y"|gravity accelerometer Y-axial raw signals sdev
14 |"tGravityAcc_std_Z"|gravity accelerometer Z-axial raw signals sdev
15 |"tBodyAccJerk_mean_X"|   
16 |"tBodyAccJerk_mean_Y"    |
17 |"tBodyAccJerk_mean_Z"    |    Jerk values for variables 3 to 8
18 |"tBodyAccJerk_std_X"     |
19 |"tBodyAccJerk_std_Y"     |
20 |"tBodyAccJerk_std_Z" |
21 |"tBodyGyro_mean_X"|gyroscope X-axial raw signals mean
22 |"tBodyGyro_mean_Y"|gyroscope Y-axial raw signals mean
23 |"tBodyGyro_mean_Z"|gyroscope Z-axial raw signals mean
24 |"tBodyGyro_std_X"|gyroscope X-axial raw signals mean
25 |"tBodyGyro_std_Y"|gyroscope Y-axial raw signals mean
26 |"tBodyGyro_std_Z"|gyroscope Z-axial raw signals mean
---|------------------|------------------------

27 |"tBodyGyroJerk_mean_X"  |
28 |"tBodyGyroJerk_mean_Y"  |
29 |"tBodyGyroJerk_mean_Z"  |    Jerk values for variables 21 to 26
30 |"tBodyGyroJerk_std_X"   |
31 |"tBodyGyroJerk_std_Y"   |
32 |"tBodyGyroJerk_std_Z"   |
---|------------------|------------------------
33 |"tBodyAccMag_mean"       |
34 |"tBodyAccMag_std"         |
35 |"tGravityAccMag_mean"     |
36 |"tGravityAccMag_std"      |    Magnitudes of the 3-dimensional signals 
37 |"tBodyAccJerkMag_mean"    |
38 |"tBodyAccJerkMag_std"     |
39 |"tBodyGyroMag_mean"       |
40 |"tBodyGyroMag_std"        |
41 |"tBodyGyroJerkMag_mean"   |
42 |"tBodyGyroJerkMag_std"    |
---|------------------|------------------------
43 |"fBodyAcc_mean_X"         |
44 |"fBodyAcc_mean_Y"         |
45 |"fBodyAcc_mean_Z"         |
46 |"fBodyAcc_std_X"          |
47 |"fBodyAcc_std_Y"          |
48 |"fBodyAcc_std_Z"          |
49 |"fBodyAcc_meanFreq_X"         |
50 |"fBodyAcc_meanFreq_Y"         |
51 |"fBodyAcc_meanFreq_Z"         |
52 |"fBodyAccJerk_mean_X"         |
53 |"fBodyAccJerk_mean_Y"         |
54 |"fBodyAccJerk_mean_Z"         |
55 |"fBodyAccJerk_std_X"          |
56 |"fBodyAccJerk_std_Y"          |
57 |"fBodyAccJerk_std_Z"          |
58 |"fBodyAccJerk_meanFreq_X"     |
59 |"fBodyAccJerk_meanFreq_Y"     |
60 |"fBodyAccJerk_meanFreq_Z"     |
61 |"fBodyGyro_mean_X"            |  FFT applied to previous variables
62 |"fBodyGyro_mean_Y"            |    values are in the frequency domain
63 |"fBodyGyro_mean_Z"            |    instead of the time domain
64 |"fBodyGyro_std_X"             |
65 |"fBodyGyro_std_Y"             |
66 |"fBodyGyro_std_Z"             |
67 |"fBodyGyro_meanFreq_X"        |
68 |"fBodyGyro_meanFreq_Y"        |
69 |"fBodyGyro_meanFreq_Z"        |
70 |"fBodyAccMag_mean"            |
71 |"fBodyAccMag_std"             |
72 |"fBodyAccMag_meanFreq"        |
73 |"fBodyBodyAccJerkMag_mean"    |
74 |"fBodyBodyAccJerkMag_std"     |
75 |"fBodyBodyAccJerkMag_meanFreq"|
76 |"fBodyBodyGyroMag_mean"       |
77 |"fBodyBodyGyroMag_std"        |
78 |"fBodyBodyGyroMag_meanFreq"   |
79 |"fBodyBodyGyroJerkMag_mean"   |
80 |"fBodyBodyGyroJerkMag_std"    |
81 |"fBodyBodyGyroJerkMag_meanFreq"|
---|------------------|------------------------
82 |"angletBodyAccMean_gravity"    |
83 |"angletBodyAccJerkMean_gravityMean"   |
84 |"angletBodyGyroMean_gravityMean"      |
85 |"angletBodyGyroJerkMean_gravityMean"  |
86 |"angleX_gravityMean"                  |
87 |"angleY_gravityMean"                  |
88 |"angleZ_gravityMean"                  |


### The Original Data

For each record it is provided:

Triaxial acceleration from the accelerometer (total acceleration) and the estimated body
acceleration.
Triaxial Angular velocity from the gyroscope. 
A 561-feature vector with time and frequency domain variables. 
Its activity label. 
An identifier of the subject who carried out the experiment.

The features selected for this database come from the accelerometer and gyroscope 3-axial
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time)
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the acceleration signal was then separated into body and gravity
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth
filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to
obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these
three-dimensional signals were calculated using the Euclidean norm
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag,
fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are
used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean



### Transformations performed to the Original Data

Both test and train observations were read (from files "X_test.txt" and "X_train.txt")
into data frames (testset and trainset) and then the train cases were
appended to the test ones, getting a single data frame for the analysis (observ).

Feature naming file ("features.txt") was read and the features were assigned to the data
frame columns.

Columns containing "mean" or "std" were extracted using grep(), to get a new reduced
data frame containing only mean or standard deviation estimates (obsmeansd).

The subjects code files ("subject_test.txt" and "subject_train.txt") for both test and
train observations were read and then the train cases were appended to the test ones into
a single data frame (subj).

The activities code files ("y_test.txt" and "y_train.txt") for both test and train were
read and then the train cases were appended to the test ones into a single data frame
(act).

The activity codes were replaced by the activity names read from the corresponding files  
and and the activity names were bound as the first column of the reduced (obsmeansd)
data frame.

Subjects vector (subj) was added as the new first column of the observations data set
(obsmeansd).

Column labels were replaced for "well-behaved" ones, using '_' to replace '-' and ',' 
and deleting '('s and ')'s.

A second tidy data frame (avgactsubj), with the average of each variable for each activity
and each subject, was created using aggregate() and then written to file "tidy.txt".


