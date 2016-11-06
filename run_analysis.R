library(plyr)
library(reshape2)

##########################################################################
# Download and unzip the UCI HAR (Human Activity Recognition) Dataset
##########################################################################
filename <- "HAR.zip"

if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename)
}  

if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}


##########################################################################
# Load the features and activity label
##########################################################################
features <- read.table("./UCI HAR Dataset/features.txt")
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

View(features)
View(activityLabels)


##########################################################################
# Extract only the measurements on the mean and standard deviation 
##########################################################################
features[,2] <- as.character(features[,2])
indexMeanStd <- grep("-(mean|std)\\(\\)", features[,2])
namesMeanStd <- features[indexMeanStd,2]


##########################################################################
# Load and combine the train datasets for those measurements on mean and 
# standard deviation and add activity type
##########################################################################
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")[indexMeanStd]
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

y_train <- join(y_train, activityLabels)
train <- cbind(subject_train, y_train, x_train )


##########################################################################
# Load and combine the test datasets for those measurements on mean and 
# standard deviation
##########################################################################
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")[indexMeanStd]
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

y_test <- join(y_test, activityLabels)
test <- cbind(subject_test, y_test, x_test )


##########################################################################
# Combine train and test datasets, assign column names
##########################################################################
allData <- rbind(train, test) 
colnames(allData) <- c("subjectId", "activityId", "activityType", namesMeanStd)
View(allData)


##########################################################################
# Create tidy dataset with the average of each variable for each subject 
# and activity pair
##########################################################################
allData$activityId <- as.factor(allData$activityId)
allData$activityType <- as.factor(allData$activityType)
allData$subjectId <- as.factor(allData$subjectId)
View(allData)

molten <- melt(allData, c("subjectId", "activityId", "activityType"))
View(molten)
#molten$value <- as.numeric(molten$value)

average <- dcast(molten, subjectId + activityId + activityType ~ variable, mean)
View(average)

write.table(average, "tidy.txt", row.names = FALSE, quote = FALSE)

