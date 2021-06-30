Codebook for Tidydata
================
2021-06-30











# Data report overview

The dataset examined has the following dimensions:

| Feature                | Result |
|:-----------------------|-------:|
| Number of observations |  10299 |
| Number of variables    |     82 |

# Data set information

Human Activity Recognition database built from the recordings of 30
subjects performing activities of daily living (ADL) while carrying a
waist-mounted smartphone with embedded inertial sensors. More
information of this data set can be found in this
[page](the%20https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

# Source Data

The source data can be obtained from
[here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
and comprises the following:

-   *features.txt:* list of feature names (measurement variables).

-   *activity\_labels.txt:* list of descriptions of all activities
    (labels).

-   *X\_train.txt:* training set.

-   *y\_train.txt:* training labels.

-   *subject\_train.txt:* each row identifies the subject who performed
    the activity in the training set.

-   *X\_test.txt:* test set.

-   *y\_test.txt:* test labels.

-   *subject\_test.txt:* each row identifies the subject who performed
    the activity in the test set.

# Transformation steps to create Tidydata

The transformation steps to create Tidydata are recorded in
*run\_analysis.R*, and are described below:

1\\. **Merges the training and test sets to create one data set**

*X\_train.txt*, *y\_train.txt* and *subject\_train.txt* were combined
column-wise to create the training data set and *X\_test.txt*,
*y\_test.txt* and *subject\_test.txt* were combined column-wise to
create the test data set.

The training and test data were combined row-wise to create the full
data set.

2\\. **Appropriately labels the data set with descriptive variable
names** (refer to CodeBook.md)

*features.txt* was used to label the measurement variables.

3\\. **Extracts only the variables that are mean and standard deviation
for each measurement**

Only measurement variables containing mean() and std() in the variable
names were retained.

4\\. **Applies descriptive activity names to name the activities in the
data set**

*activity\_labels.txt* was used to descriptively label the activities in
the data set.

5\\. **Creates a second, independent tidy data set with the average of
each variable for each activity and each subject**

Each variable was summarized by its mean by activity and subject using
dplyr and stored in a text file *summarytidydata.txt*.

# Codebook summary table

| Label | Variable                                                                                          | Class     | \# unique values | Missing | Description |
|:------|:--------------------------------------------------------------------------------------------------|:----------|-----------------:|:-------:|:------------|
|       | \[**label**\]                                                                                     | integer   |                6 | 0.00 %  |             |
|       | [**timeBodyAccelerometer-mean()-X**](#timebodyaccelerometer-mean-x)                               | numeric   |            10292 | 0.00 %  |             |
|       | [**timeBodyAccelerometer-mean()-Y**](#timebodyaccelerometer-mean-y)                               | numeric   |            10299 | 0.00 %  |             |
|       | [**timeBodyAccelerometer-mean()-Z**](#timebodyaccelerometer-mean-z)                               | numeric   |            10293 | 0.00 %  |             |
|       | [**timeBodyAccelerometer-std()-X**](#timebodyaccelerometer-std-x)                                 | numeric   |            10295 | 0.00 %  |             |
|       | [**timeBodyAccelerometer-std()-Y**](#timebodyaccelerometer-std-y)                                 | numeric   |            10297 | 0.00 %  |             |
|       | [**timeBodyAccelerometer-std()-Z**](#timebodyaccelerometer-std-z)                                 | numeric   |            10297 | 0.00 %  |             |
|       | [**timeGravityAccelerometer-mean()-X**](#timegravityaccelerometer-mean-x)                         | numeric   |            10296 | 0.00 %  |             |
|       | [**timeGravityAccelerometer-mean()-Y**](#timegravityaccelerometer-mean-y)                         | numeric   |            10298 | 0.00 %  |             |
|       | [**timeGravityAccelerometer-mean()-Z**](#timegravityaccelerometer-mean-z)                         | numeric   |            10299 | 0.00 %  |             |
|       | [**timeGravityAccelerometer-std()-X**](#timegravityaccelerometer-std-x)                           | numeric   |            10288 | 0.00 %  |             |
|       | [**timeGravityAccelerometer-std()-Y**](#timegravityaccelerometer-std-y)                           | numeric   |            10293 | 0.00 %  |             |
|       | [**timeGravityAccelerometer-std()-Z**](#timegravityaccelerometer-std-z)                           | numeric   |            10296 | 0.00 %  |             |
|       | [**timeBodyAccelerometerJerk-mean()-X**](#timebodyaccelerometerjerk-mean-x)                       | numeric   |            10299 | 0.00 %  |             |
|       | [**timeBodyAccelerometerJerk-mean()-Y**](#timebodyaccelerometerjerk-mean-y)                       | numeric   |            10299 | 0.00 %  |             |
|       | [**timeBodyAccelerometerJerk-mean()-Z**](#timebodyaccelerometerjerk-mean-z)                       | numeric   |            10299 | 0.00 %  |             |
|       | [**timeBodyAccelerometerJerk-std()-X**](#timebodyaccelerometerjerk-std-x)                         | numeric   |            10290 | 0.00 %  |             |
|       | [**timeBodyAccelerometerJerk-std()-Y**](#timebodyaccelerometerjerk-std-y)                         | numeric   |            10296 | 0.00 %  |             |
|       | [**timeBodyAccelerometerJerk-std()-Z**](#timebodyaccelerometerjerk-std-z)                         | numeric   |            10293 | 0.00 %  |             |
|       | [**timeBodyGyroscope-mean()-X**](#timebodygyroscope-mean-x)                                       | numeric   |            10298 | 0.00 %  |             |
|       | [**timeBodyGyroscope-mean()-Y**](#timebodygyroscope-mean-y)                                       | numeric   |            10299 | 0.00 %  |             |
|       | [**timeBodyGyroscope-mean()-Z**](#timebodygyroscope-mean-z)                                       | numeric   |            10297 | 0.00 %  |             |
|       | [**timeBodyGyroscope-std()-X**](#timebodygyroscope-std-x)                                         | numeric   |            10292 | 0.00 %  |             |
|       | [**timeBodyGyroscope-std()-Y**](#timebodygyroscope-std-y)                                         | numeric   |            10296 | 0.00 %  |             |
|       | [**timeBodyGyroscope-std()-Z**](#timebodygyroscope-std-z)                                         | numeric   |            10296 | 0.00 %  |             |
|       | [**timeBodyGyroscopeJerk-mean()-X**](#timebodygyroscopejerk-mean-x)                               | numeric   |            10295 | 0.00 %  |             |
|       | [**timeBodyGyroscopeJerk-mean()-Y**](#timebodygyroscopejerk-mean-y)                               | numeric   |            10299 | 0.00 %  |             |
|       | [**timeBodyGyroscopeJerk-mean()-Z**](#timebodygyroscopejerk-mean-z)                               | numeric   |            10298 | 0.00 %  |             |
|       | [**timeBodyGyroscopeJerk-std()-X**](#timebodygyroscopejerk-std-x)                                 | numeric   |            10292 | 0.00 %  |             |
|       | [**timeBodyGyroscopeJerk-std()-Y**](#timebodygyroscopejerk-std-y)                                 | numeric   |            10295 | 0.00 %  |             |
|       | [**timeBodyGyroscopeJerk-std()-Z**](#timebodygyroscopejerk-std-z)                                 | numeric   |            10291 | 0.00 %  |             |
|       | [**timeBodyAccelerometerMagnitude-mean()**](#timebodyaccelerometermagnitude-mean)                 | numeric   |            10296 | 0.00 %  |             |
|       | [**timeBodyAccelerometerMagnitude-std()**](#timebodyaccelerometermagnitude-std)                   | numeric   |            10294 | 0.00 %  |             |
|       | [**timeGravityAccelerometerMagnitude-mean()**](#timegravityaccelerometermagnitude-mean)           | numeric   |            10296 | 0.00 %  |             |
|       | [**timeGravityAccelerometerMagnitude-std()**](#timegravityaccelerometermagnitude-std)             | numeric   |            10294 | 0.00 %  |             |
|       | [**timeBodyAccelerometerJerkMagnitude-mean()**](#timebodyaccelerometerjerkmagnitude-mean)         | numeric   |            10292 | 0.00 %  |             |
|       | [**timeBodyAccelerometerJerkMagnitude-std()**](#timebodyaccelerometerjerkmagnitude-std)           | numeric   |            10294 | 0.00 %  |             |
|       | [**timeBodyGyroscopeMagnitude-mean()**](#timebodygyroscopemagnitude-mean)                         | numeric   |            10298 | 0.00 %  |             |
|       | [**timeBodyGyroscopeMagnitude-std()**](#timebodygyroscopemagnitude-std)                           | numeric   |            10298 | 0.00 %  |             |
|       | [**timeBodyGyroscopeJerkMagnitude-mean()**](#timebodygyroscopejerkmagnitude-mean)                 | numeric   |            10293 | 0.00 %  |             |
|       | [**timeBodyGyroscopeJerkMagnitude-std()**](#timebodygyroscopejerkmagnitude-std)                   | numeric   |            10297 | 0.00 %  |             |
|       | [**freqBodyAccelerometer-mean()-X**](#freqbodyaccelerometer-mean-x)                               | numeric   |            10295 | 0.00 %  |             |
|       | [**freqBodyAccelerometer-mean()-Y**](#freqbodyaccelerometer-mean-y)                               | numeric   |            10292 | 0.00 %  |             |
|       | [**freqBodyAccelerometer-mean()-Z**](#freqbodyaccelerometer-mean-z)                               | numeric   |            10295 | 0.00 %  |             |
|       | [**freqBodyAccelerometer-std()-X**](#freqbodyaccelerometer-std-x)                                 | numeric   |            10294 | 0.00 %  |             |
|       | [**freqBodyAccelerometer-std()-Y**](#freqbodyaccelerometer-std-y)                                 | numeric   |            10297 | 0.00 %  |             |
|       | [**freqBodyAccelerometer-std()-Z**](#freqbodyaccelerometer-std-z)                                 | numeric   |            10296 | 0.00 %  |             |
|       | [**freqBodyAccelerometer-meanFreq()-X**](#freqbodyaccelerometer-meanfreq-x)                       | numeric   |            10299 | 0.00 %  |             |
|       | [**freqBodyAccelerometer-meanFreq()-Y**](#freqbodyaccelerometer-meanfreq-y)                       | numeric   |            10299 | 0.00 %  |             |
|       | [**freqBodyAccelerometer-meanFreq()-Z**](#freqbodyaccelerometer-meanfreq-z)                       | numeric   |            10299 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerk-mean()-X**](#freqbodyaccelerometerjerk-mean-x)                       | numeric   |            10293 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerk-mean()-Y**](#freqbodyaccelerometerjerk-mean-y)                       | numeric   |            10296 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerk-mean()-Z**](#freqbodyaccelerometerjerk-mean-z)                       | numeric   |            10294 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerk-std()-X**](#freqbodyaccelerometerjerk-std-x)                         | numeric   |            10291 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerk-std()-Y**](#freqbodyaccelerometerjerk-std-y)                         | numeric   |            10294 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerk-std()-Z**](#freqbodyaccelerometerjerk-std-z)                         | numeric   |            10290 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerk-meanFreq()-X**](#freqbodyaccelerometerjerk-meanfreq-x)               | numeric   |            10298 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerk-meanFreq()-Y**](#freqbodyaccelerometerjerk-meanfreq-y)               | numeric   |            10299 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerk-meanFreq()-Z**](#freqbodyaccelerometerjerk-meanfreq-z)               | numeric   |            10298 | 0.00 %  |             |
|       | [**freqBodyGyroscope-mean()-X**](#freqbodygyroscope-mean-x)                                       | numeric   |            10297 | 0.00 %  |             |
|       | [**freqBodyGyroscope-mean()-Y**](#freqbodygyroscope-mean-y)                                       | numeric   |            10296 | 0.00 %  |             |
|       | [**freqBodyGyroscope-mean()-Z**](#freqbodygyroscope-mean-z)                                       | numeric   |            10297 | 0.00 %  |             |
|       | [**freqBodyGyroscope-std()-X**](#freqbodygyroscope-std-x)                                         | numeric   |            10297 | 0.00 %  |             |
|       | [**freqBodyGyroscope-std()-Y**](#freqbodygyroscope-std-y)                                         | numeric   |            10293 | 0.00 %  |             |
|       | [**freqBodyGyroscope-std()-Z**](#freqbodygyroscope-std-z)                                         | numeric   |            10295 | 0.00 %  |             |
|       | [**freqBodyGyroscope-meanFreq()-X**](#freqbodygyroscope-meanfreq-x)                               | numeric   |            10298 | 0.00 %  |             |
|       | [**freqBodyGyroscope-meanFreq()-Y**](#freqbodygyroscope-meanfreq-y)                               | numeric   |            10299 | 0.00 %  |             |
|       | [**freqBodyGyroscope-meanFreq()-Z**](#freqbodygyroscope-meanfreq-z)                               | numeric   |            10299 | 0.00 %  |             |
|       | [**freqBodyAccelerometerMagnitude-mean()**](#freqbodyaccelerometermagnitude-mean)                 | numeric   |            10296 | 0.00 %  |             |
|       | [**freqBodyAccelerometerMagnitude-std()**](#freqbodyaccelerometermagnitude-std)                   | numeric   |            10298 | 0.00 %  |             |
|       | [**freqBodyAccelerometerMagnitude-meanFreq()**](#freqbodyaccelerometermagnitude-meanfreq)         | numeric   |            10299 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerkMagnitude-mean()**](#freqbodyaccelerometerjerkmagnitude-mean)         | numeric   |            10290 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerkMagnitude-std()**](#freqbodyaccelerometerjerkmagnitude-std)           | numeric   |            10296 | 0.00 %  |             |
|       | [**freqBodyAccelerometerJerkMagnitude-meanFreq()**](#freqbodyaccelerometerjerkmagnitude-meanfreq) | numeric   |            10299 | 0.00 %  |             |
|       | [**freqBodyGyroscopeMagnitude-mean()**](#freqbodygyroscopemagnitude-mean)                         | numeric   |            10297 | 0.00 %  |             |
|       | [**freqBodyGyroscopeMagnitude-std()**](#freqbodygyroscopemagnitude-std)                           | numeric   |            10296 | 0.00 %  |             |
|       | [**freqBodyGyroscopeMagnitude-meanFreq()**](#freqbodygyroscopemagnitude-meanfreq)                 | numeric   |            10299 | 0.00 %  |             |
|       | [**freqBodyGyroscopeJerkMagnitude-mean()**](#freqbodygyroscopejerkmagnitude-mean)                 | numeric   |            10293 | 0.00 %  |             |
|       | [**freqBodyGyroscopeJerkMagnitude-std()**](#freqbodygyroscopejerkmagnitude-std)                   | numeric   |            10292 | 0.00 %  |             |
|       | [**freqBodyGyroscopeJerkMagnitude-meanFreq()**](#freqbodygyroscopejerkmagnitude-meanfreq)         | numeric   |            10299 | 0.00 %  |             |
|       | \[**subject**\]                                                                                   | integer   |               30 | 0.00 %  |             |
|       | \[**activity**\]                                                                                  | character |                6 | 0.00 %  |             |

# Variable list

## label

| Feature                 |  Result |
|:------------------------|--------:|
| Variable type           | integer |
| Number of missing obs.  | 0 (0 %) |
| Number of unique values |       6 |
| Median                  |       4 |
| 1st and 3rd quartiles   |    2; 5 |
| Min. and max.           |    1; 6 |

![](codebook_tidydata_files/figure-gfm/Var-1-label-1.png)<!-- -->

## timeBodyAccelerometer-mean()-X

| Feature                 |     Result |
|:------------------------|-----------:|
| Variable type           |    numeric |
| Number of missing obs.  |    0 (0 %) |
| Number of unique values |      10292 |
| Median                  |       0.28 |
| 1st and 3rd quartiles   | 0.26; 0.29 |
| Min. and max.           |      -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-2-timeBodyAccelerometer-mean()-X-1.png)<!-- -->

## timeBodyAccelerometer-mean()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10299 |
| Median                  |        -0.02 |
| 1st and 3rd quartiles   | -0.02; -0.01 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-3-timeBodyAccelerometer-mean()-Y-1.png)<!-- -->

## timeBodyAccelerometer-mean()-Z

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10293 |
| Median                  |       -0.11 |
| 1st and 3rd quartiles   | -0.12; -0.1 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-4-timeBodyAccelerometer-mean()-Z-1.png)<!-- -->

## timeBodyAccelerometer-std()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10295 |
| Median                  |        -0.94 |
| 1st and 3rd quartiles   | -0.99; -0.25 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-5-timeBodyAccelerometer-std()-X-1.png)<!-- -->

## timeBodyAccelerometer-std()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10297 |
| Median                  |        -0.84 |
| 1st and 3rd quartiles   | -0.98; -0.06 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-6-timeBodyAccelerometer-std()-Y-1.png)<!-- -->

## timeBodyAccelerometer-std()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10297 |
| Median                  |        -0.85 |
| 1st and 3rd quartiles   | -0.98; -0.28 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-7-timeBodyAccelerometer-std()-Z-1.png)<!-- -->

## timeGravityAccelerometer-mean()-X

| Feature                 |     Result |
|:------------------------|-----------:|
| Variable type           |    numeric |
| Number of missing obs.  |    0 (0 %) |
| Number of unique values |      10296 |
| Median                  |       0.92 |
| 1st and 3rd quartiles   | 0.81; 0.95 |
| Min. and max.           |      -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-8-timeGravityAccelerometer-mean()-X-1.png)<!-- -->

## timeGravityAccelerometer-mean()-Y

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10298 |
| Median                  |       -0.14 |
| 1st and 3rd quartiles   | -0.24; 0.12 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-9-timeGravityAccelerometer-mean()-Y-1.png)<!-- -->

## timeGravityAccelerometer-mean()-Z

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |        0.04 |
| 1st and 3rd quartiles   | -0.12; 0.22 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-10-timeGravityAccelerometer-mean()-Z-1.png)<!-- -->

## timeGravityAccelerometer-std()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10288 |
| Median                  |        -0.98 |
| 1st and 3rd quartiles   | -0.99; -0.96 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-11-timeGravityAccelerometer-std()-X-1.png)<!-- -->

## timeGravityAccelerometer-std()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10293 |
| Median                  |        -0.98 |
| 1st and 3rd quartiles   | -0.99; -0.95 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-12-timeGravityAccelerometer-std()-Y-1.png)<!-- -->

## timeGravityAccelerometer-std()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.97 |
| 1st and 3rd quartiles   | -0.99; -0.93 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-13-timeGravityAccelerometer-std()-Z-1.png)<!-- -->

## timeBodyAccelerometerJerk-mean()-X

| Feature                 |     Result |
|:------------------------|-----------:|
| Variable type           |    numeric |
| Number of missing obs.  |    0 (0 %) |
| Number of unique values |      10299 |
| Median                  |       0.08 |
| 1st and 3rd quartiles   | 0.06; 0.09 |
| Min. and max.           |      -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-14-timeBodyAccelerometerJerk-mean()-X-1.png)<!-- -->

## timeBodyAccelerometerJerk-mean()-Y

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |        0.01 |
| 1st and 3rd quartiles   | -0.02; 0.03 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-15-timeBodyAccelerometerJerk-mean()-Y-1.png)<!-- -->

## timeBodyAccelerometerJerk-mean()-Z

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |           0 |
| 1st and 3rd quartiles   | -0.03; 0.02 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-16-timeBodyAccelerometerJerk-mean()-Z-1.png)<!-- -->

## timeBodyAccelerometerJerk-std()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10290 |
| Median                  |        -0.95 |
| 1st and 3rd quartiles   | -0.99; -0.29 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-17-timeBodyAccelerometerJerk-std()-X-1.png)<!-- -->

## timeBodyAccelerometerJerk-std()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.93 |
| 1st and 3rd quartiles   | -0.99; -0.22 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-18-timeBodyAccelerometerJerk-std()-Y-1.png)<!-- -->

## timeBodyAccelerometerJerk-std()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10293 |
| Median                  |        -0.95 |
| 1st and 3rd quartiles   | -0.99; -0.55 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-19-timeBodyAccelerometerJerk-std()-Z-1.png)<!-- -->

## timeBodyGyroscope-mean()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10298 |
| Median                  |        -0.03 |
| 1st and 3rd quartiles   | -0.05; -0.01 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-20-timeBodyGyroscope-mean()-X-1.png)<!-- -->

## timeBodyGyroscope-mean()-Y

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |       -0.07 |
| 1st and 3rd quartiles   | -0.1; -0.05 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-21-timeBodyGyroscope-mean()-Y-1.png)<!-- -->

## timeBodyGyroscope-mean()-Z

| Feature                 |     Result |
|:------------------------|-----------:|
| Variable type           |    numeric |
| Number of missing obs.  |    0 (0 %) |
| Number of unique values |      10297 |
| Median                  |       0.09 |
| 1st and 3rd quartiles   | 0.06; 0.11 |
| Min. and max.           |      -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-22-timeBodyGyroscope-mean()-Z-1.png)<!-- -->

## timeBodyGyroscope-std()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10292 |
| Median                  |         -0.9 |
| 1st and 3rd quartiles   | -0.99; -0.48 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-23-timeBodyGyroscope-std()-X-1.png)<!-- -->

## timeBodyGyroscope-std()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.91 |
| 1st and 3rd quartiles   | -0.98; -0.45 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-24-timeBodyGyroscope-std()-Y-1.png)<!-- -->

## timeBodyGyroscope-std()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.88 |
| 1st and 3rd quartiles   | -0.99; -0.34 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-25-timeBodyGyroscope-std()-Z-1.png)<!-- -->

## timeBodyGyroscopeJerk-mean()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10295 |
| Median                  |         -0.1 |
| 1st and 3rd quartiles   | -0.12; -0.08 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-26-timeBodyGyroscopeJerk-mean()-X-1.png)<!-- -->

## timeBodyGyroscopeJerk-mean()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10299 |
| Median                  |        -0.04 |
| 1st and 3rd quartiles   | -0.06; -0.03 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-27-timeBodyGyroscopeJerk-mean()-Y-1.png)<!-- -->

## timeBodyGyroscopeJerk-mean()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10298 |
| Median                  |        -0.05 |
| 1st and 3rd quartiles   | -0.08; -0.03 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-28-timeBodyGyroscopeJerk-mean()-Z-1.png)<!-- -->

## timeBodyGyroscopeJerk-std()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10292 |
| Median                  |        -0.93 |
| 1st and 3rd quartiles   | -0.99; -0.49 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-29-timeBodyGyroscopeJerk-std()-X-1.png)<!-- -->

## timeBodyGyroscopeJerk-std()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10295 |
| Median                  |        -0.95 |
| 1st and 3rd quartiles   | -0.99; -0.63 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-30-timeBodyGyroscopeJerk-std()-Y-1.png)<!-- -->

## timeBodyGyroscopeJerk-std()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10291 |
| Median                  |        -0.95 |
| 1st and 3rd quartiles   | -0.99; -0.51 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-31-timeBodyGyroscopeJerk-std()-Z-1.png)<!-- -->

## timeBodyAccelerometerMagnitude-mean()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.87 |
| 1st and 3rd quartiles   | -0.98; -0.12 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-32-timeBodyAccelerometerMagnitude-mean()-1.png)<!-- -->

## timeBodyAccelerometerMagnitude-std()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10294 |
| Median                  |        -0.84 |
| 1st and 3rd quartiles   | -0.98; -0.24 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-33-timeBodyAccelerometerMagnitude-std()-1.png)<!-- -->

## timeGravityAccelerometerMagnitude-mean()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.87 |
| 1st and 3rd quartiles   | -0.98; -0.12 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-34-timeGravityAccelerometerMagnitude-mean()-1.png)<!-- -->

## timeGravityAccelerometerMagnitude-std()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10294 |
| Median                  |        -0.84 |
| 1st and 3rd quartiles   | -0.98; -0.24 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-35-timeGravityAccelerometerMagnitude-std()-1.png)<!-- -->

## timeBodyAccelerometerJerkMagnitude-mean()

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10292 |
| Median                  |       -0.95 |
| 1st and 3rd quartiles   | -0.99; -0.3 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-36-timeBodyAccelerometerJerkMagnitude-mean()-1.png)<!-- -->

## timeBodyAccelerometerJerkMagnitude-std()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10294 |
| Median                  |        -0.93 |
| 1st and 3rd quartiles   | -0.99; -0.27 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-37-timeBodyAccelerometerJerkMagnitude-std()-1.png)<!-- -->

## timeBodyGyroscopeMagnitude-mean()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10298 |
| Median                  |        -0.82 |
| 1st and 3rd quartiles   | -0.98; -0.25 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-38-timeBodyGyroscopeMagnitude-mean()-1.png)<!-- -->

## timeBodyGyroscopeMagnitude-std()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10298 |
| Median                  |        -0.83 |
| 1st and 3rd quartiles   | -0.98; -0.39 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-39-timeBodyGyroscopeMagnitude-std()-1.png)<!-- -->

## timeBodyGyroscopeJerkMagnitude-mean()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10293 |
| Median                  |        -0.96 |
| 1st and 3rd quartiles   | -0.99; -0.55 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-40-timeBodyGyroscopeJerkMagnitude-mean()-1.png)<!-- -->

## timeBodyGyroscopeJerkMagnitude-std()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10297 |
| Median                  |        -0.94 |
| 1st and 3rd quartiles   | -0.99; -0.61 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-41-timeBodyGyroscopeJerkMagnitude-std()-1.png)<!-- -->

## freqBodyAccelerometer-mean()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10295 |
| Median                  |        -0.95 |
| 1st and 3rd quartiles   | -0.99; -0.26 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-42-freqBodyAccelerometer-mean()-X-1.png)<!-- -->

## freqBodyAccelerometer-mean()-Y

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10292 |
| Median                  |       -0.86 |
| 1st and 3rd quartiles   | -0.98; -0.1 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-43-freqBodyAccelerometer-mean()-Y-1.png)<!-- -->

## freqBodyAccelerometer-mean()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10295 |
| Median                  |         -0.9 |
| 1st and 3rd quartiles   | -0.98; -0.37 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-44-freqBodyAccelerometer-mean()-Z-1.png)<!-- -->

## freqBodyAccelerometer-std()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10294 |
| Median                  |        -0.94 |
| 1st and 3rd quartiles   | -0.99; -0.25 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-45-freqBodyAccelerometer-std()-X-1.png)<!-- -->

## freqBodyAccelerometer-std()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10297 |
| Median                  |        -0.83 |
| 1st and 3rd quartiles   | -0.98; -0.09 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-46-freqBodyAccelerometer-std()-Y-1.png)<!-- -->

## freqBodyAccelerometer-std()-Z

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10296 |
| Median                  |       -0.84 |
| 1st and 3rd quartiles   | -0.98; -0.3 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-47-freqBodyAccelerometer-std()-Z-1.png)<!-- -->

## freqBodyAccelerometer-meanFreq()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10299 |
| Median                  |        -0.24 |
| 1st and 3rd quartiles   | -0.42; -0.02 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-48-freqBodyAccelerometer-meanFreq()-X-1.png)<!-- -->

## freqBodyAccelerometer-meanFreq()-Y

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |           0 |
| 1st and 3rd quartiles   | -0.14; 0.18 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-49-freqBodyAccelerometer-meanFreq()-Y-1.png)<!-- -->

## freqBodyAccelerometer-meanFreq()-Z

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |        0.06 |
| 1st and 3rd quartiles   | -0.14; 0.25 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-50-freqBodyAccelerometer-meanFreq()-Z-1.png)<!-- -->

## freqBodyAccelerometerJerk-mean()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10293 |
| Median                  |        -0.95 |
| 1st and 3rd quartiles   | -0.99; -0.33 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-51-freqBodyAccelerometerJerk-mean()-X-1.png)<!-- -->

## freqBodyAccelerometerJerk-mean()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.93 |
| 1st and 3rd quartiles   | -0.98; -0.26 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-52-freqBodyAccelerometerJerk-mean()-Y-1.png)<!-- -->

## freqBodyAccelerometerJerk-mean()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10294 |
| Median                  |        -0.95 |
| 1st and 3rd quartiles   | -0.99; -0.51 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-53-freqBodyAccelerometerJerk-mean()-Z-1.png)<!-- -->

## freqBodyAccelerometerJerk-std()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10291 |
| Median                  |        -0.96 |
| 1st and 3rd quartiles   | -0.99; -0.32 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-54-freqBodyAccelerometerJerk-std()-X-1.png)<!-- -->

## freqBodyAccelerometerJerk-std()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10294 |
| Median                  |        -0.93 |
| 1st and 3rd quartiles   | -0.99; -0.24 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-55-freqBodyAccelerometerJerk-std()-Y-1.png)<!-- -->

## freqBodyAccelerometerJerk-std()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10290 |
| Median                  |        -0.96 |
| 1st and 3rd quartiles   | -0.99; -0.59 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-56-freqBodyAccelerometerJerk-std()-Z-1.png)<!-- -->

## freqBodyAccelerometerJerk-meanFreq()-X

| Feature                 |    Result |
|:------------------------|----------:|
| Variable type           |   numeric |
| Number of missing obs.  |   0 (0 %) |
| Number of unique values |     10298 |
| Median                  |     -0.05 |
| 1st and 3rd quartiles   | -0.3; 0.2 |
| Min. and max.           |     -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-57-freqBodyAccelerometerJerk-meanFreq()-X-1.png)<!-- -->

## freqBodyAccelerometerJerk-meanFreq()-Y

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |       -0.24 |
| 1st and 3rd quartiles   | -0.43; 0.01 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-58-freqBodyAccelerometerJerk-meanFreq()-Y-1.png)<!-- -->

## freqBodyAccelerometerJerk-meanFreq()-Z

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10298 |
| Median                  |        -0.1 |
| 1st and 3rd quartiles   | -0.33; 0.09 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-59-freqBodyAccelerometerJerk-meanFreq()-Z-1.png)<!-- -->

## freqBodyGyroscope-mean()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10297 |
| Median                  |        -0.89 |
| 1st and 3rd quartiles   | -0.99; -0.38 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-60-freqBodyGyroscope-mean()-X-1.png)<!-- -->

## freqBodyGyroscope-mean()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.92 |
| 1st and 3rd quartiles   | -0.98; -0.47 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-61-freqBodyGyroscope-mean()-Y-1.png)<!-- -->

## freqBodyGyroscope-mean()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10297 |
| Median                  |        -0.89 |
| 1st and 3rd quartiles   | -0.99; -0.32 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-62-freqBodyGyroscope-mean()-Z-1.png)<!-- -->

## freqBodyGyroscope-std()-X

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10297 |
| Median                  |        -0.91 |
| 1st and 3rd quartiles   | -0.99; -0.52 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-63-freqBodyGyroscope-std()-X-1.png)<!-- -->

## freqBodyGyroscope-std()-Y

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10293 |
| Median                  |        -0.91 |
| 1st and 3rd quartiles   | -0.98; -0.44 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-64-freqBodyGyroscope-std()-Y-1.png)<!-- -->

## freqBodyGyroscope-std()-Z

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10295 |
| Median                  |        -0.89 |
| 1st and 3rd quartiles   | -0.99; -0.42 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-65-freqBodyGyroscope-std()-Z-1.png)<!-- -->

## freqBodyGyroscope-meanFreq()-X

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10298 |
| Median                  |        -0.1 |
| 1st and 3rd quartiles   | -0.27; 0.07 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-66-freqBodyGyroscope-meanFreq()-X-1.png)<!-- -->

## freqBodyGyroscope-meanFreq()-Y

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |       -0.17 |
| 1st and 3rd quartiles   | -0.36; 0.01 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-67-freqBodyGyroscope-meanFreq()-Y-1.png)<!-- -->

## freqBodyGyroscope-meanFreq()-Z

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |       -0.05 |
| 1st and 3rd quartiles   | -0.23; 0.12 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-68-freqBodyGyroscope-meanFreq()-Z-1.png)<!-- -->

## freqBodyAccelerometerMagnitude-mean()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.88 |
| 1st and 3rd quartiles   | -0.98; -0.22 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-69-freqBodyAccelerometerMagnitude-mean()-1.png)<!-- -->

## freqBodyAccelerometerMagnitude-std()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10298 |
| Median                  |        -0.85 |
| 1st and 3rd quartiles   | -0.98; -0.38 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-70-freqBodyAccelerometerMagnitude-std()-1.png)<!-- -->

## freqBodyAccelerometerMagnitude-meanFreq()

| Feature                 |     Result |
|:------------------------|-----------:|
| Variable type           |    numeric |
| Number of missing obs.  |    0 (0 %) |
| Number of unique values |      10299 |
| Median                  |       0.07 |
| 1st and 3rd quartiles   | -0.1; 0.24 |
| Min. and max.           |      -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-71-freqBodyAccelerometerMagnitude-meanFreq()-1.png)<!-- -->

## freqBodyAccelerometerJerkMagnitude-mean()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10290 |
| Median                  |        -0.93 |
| 1st and 3rd quartiles   | -0.99; -0.26 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-72-freqBodyAccelerometerJerkMagnitude-mean()-1.png)<!-- -->

## freqBodyAccelerometerJerkMagnitude-std()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.93 |
| 1st and 3rd quartiles   | -0.99; -0.31 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-73-freqBodyAccelerometerJerkMagnitude-std()-1.png)<!-- -->

## freqBodyAccelerometerJerkMagnitude-meanFreq()

| Feature                 |  Result |
|:------------------------|--------:|
| Variable type           | numeric |
| Number of missing obs.  | 0 (0 %) |
| Number of unique values |   10299 |
| Median                  |    0.16 |
| 1st and 3rd quartiles   | 0; 0.36 |
| Min. and max.           |   -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-74-freqBodyAccelerometerJerkMagnitude-meanFreq()-1.png)<!-- -->

## freqBodyGyroscopeMagnitude-mean()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10297 |
| Median                  |        -0.88 |
| 1st and 3rd quartiles   | -0.98; -0.45 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-75-freqBodyGyroscopeMagnitude-mean()-1.png)<!-- -->

## freqBodyGyroscopeMagnitude-std()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10296 |
| Median                  |        -0.83 |
| 1st and 3rd quartiles   | -0.98; -0.47 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-76-freqBodyGyroscopeMagnitude-std()-1.png)<!-- -->

## freqBodyGyroscopeMagnitude-meanFreq()

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |       -0.05 |
| 1st and 3rd quartiles   | -0.23; 0.15 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-77-freqBodyGyroscopeMagnitude-meanFreq()-1.png)<!-- -->

## freqBodyGyroscopeJerkMagnitude-mean()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10293 |
| Median                  |        -0.95 |
| 1st and 3rd quartiles   | -0.99; -0.61 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-78-freqBodyGyroscopeJerkMagnitude-mean()-1.png)<!-- -->

## freqBodyGyroscopeJerkMagnitude-std()

| Feature                 |       Result |
|:------------------------|-------------:|
| Variable type           |      numeric |
| Number of missing obs.  |      0 (0 %) |
| Number of unique values |        10292 |
| Median                  |        -0.94 |
| 1st and 3rd quartiles   | -0.99; -0.64 |
| Min. and max.           |        -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-79-freqBodyGyroscopeJerkMagnitude-std()-1.png)<!-- -->

## freqBodyGyroscopeJerkMagnitude-meanFreq()

| Feature                 |      Result |
|:------------------------|------------:|
| Variable type           |     numeric |
| Number of missing obs.  |     0 (0 %) |
| Number of unique values |       10299 |
| Median                  |        0.14 |
| 1st and 3rd quartiles   | -0.02; 0.29 |
| Min. and max.           |       -1; 1 |

![](codebook_tidydata_files/figure-gfm/Var-80-freqBodyGyroscopeJerkMagnitude-meanFreq()-1.png)<!-- -->

## subject

| Feature                 |  Result |
|:------------------------|--------:|
| Variable type           | integer |
| Number of missing obs.  | 0 (0 %) |
| Number of unique values |      30 |
| Median                  |      17 |
| 1st and 3rd quartiles   |   9; 24 |
| Min. and max.           |   1; 30 |

![](codebook_tidydata_files/figure-gfm/Var-81-subject-1.png)<!-- -->

## activity

| Feature                 |    Result |
|:------------------------|----------:|
| Variable type           | character |
| Number of missing obs.  |   0 (0 %) |
| Number of unique values |         6 |
| Mode                    |  “LAYING” |

![](codebook_tidydata_files/figure-gfm/Var-82-activity-1.png)<!-- -->

-   Observed factor levels: “LAYING”, “SITTING”, “STANDING”, “WALKING”,
    “WALKING\_DOWNSTAIRS”, “WALKING\_UPSTAIRS”.

Report generation information:

-   Report creation date: Wed Jun 30 2021

-   dataMaid v1.4.0 \[Pkg: 2019-12-10 from CRAN (R 4.1.0)\]

-   R version 4.1.0 (2021-05-18).

-   Platform: x86\_64-w64-mingw32/x64 (64-bit)(Windows 10 x64 (build
    19042)).

-   Function call:
    `dataMaid::makeDataReport(data = tidydata, mode = c("summarize",  "visualize", "check"), smartNum = FALSE, file = "codebook_tidydata.Rmd",      checks = list(character = "showAllFactorLevels", factor = "showAllFactorLevels",          labelled = "showAllFactorLevels", haven_labelled = "showAllFactorLevels",          numeric = NULL, integer = NULL, logical = NULL, Date = NULL),      listChecks = FALSE, maxProbVals = Inf, codebook = TRUE, reportTitle = "Codebook for tidydata")`
