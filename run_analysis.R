#setwd("J:\\Coursera\\_Specilization\\03 - Getting and Cleaning Data\\PA\\UCI HAR Dataset")
#setwd("E:\\Coursera\\_Specilization\\03 - Getting and Cleaning Data\\PA\\UCI HAR Dataset")


## First Tidy Data set ##############################

## Import all files
subject_test <- read.table(".\\test\\subject_test.txt", col.names="subject_no")
subject_train <- read.table(".\\train\\subject_train.txt", col.names="subject_no")
col_names_temp <- read.table(".\\features.txt", sep=" ")
activity_labels <- read.table(".\\activity_labels.txt", sep=" ", col.names=c("activity_code","activity"))
y_test <- read.table(".\\test\\y_test.txt", col.names = "activity_code")
y_train <- read.table(".\\train\\y_train.txt", col.names = "activity_code")


## Format column names
col_names <- col_names_temp$V2
col_names <- gsub(" ", "", col_names)
col_names <- gsub("\\(", "", col_names)
col_names <- gsub("\\)", "", col_names)
col_names <- gsub("\\-", "_", col_names)
col_names <- gsub(",", "_", col_names)

## Set column names
X_test <- read.table(".\\test\\X_test.txt", col.names = col_names, check.names=TRUE)
X_train <- read.table(".\\train\\X_train.txt", col.names = col_names, check.names=TRUE)

## Join the two data sets (Test & Train)
signalsDataTest <- cbind(subject_test, y_test, X_test)
signalsDataTrain <- cbind(subject_train, y_train, X_train)
signalsData_ALL <- rbind(signalsDataTest, signalsDataTrain)

## Keep only the "Mean" and "Std" columns
col_mean <- grepl("mean",names(signalsData_ALL)) & !grepl("meanF",names(signalsData_ALL))
col_std <- grepl("std",names(signalsData_ALL))
col_utiles <- col_mean | col_std
col_utiles[1:3] <- TRUE
signalsData <- signalsData_ALL[ , col_utiles]

## Add a column "Activity" that match the "Activity code"
lineActivity <-  data.frame(activity_code=signalsData$activity_code, activity='')
lineActivity$activity <- activity_labels$activity[match(lineActivity$activity_code, activity_labels$activity_code)]

## Add the activity column to the final tidy data set
signalsData <- cbind(signalsData[,1:2], activity=lineActivity$activity, signalsData[,3:length(signalsData)])
write.table(signalsData, file = "Output_Analysis_SignalsData.csv", sep = ",", row.names = FALSE)


## Second Tidy Data set ##############################


aggSignalsData <- aggregate(tBodyAccJerkMag_std  ~ subject_no + activity_code, data = signalsData, mean)
aggSignalsData <- aggregate(. ~ subject_no + activity_code, data = signalsData, FUN=function(x) c(mn =mean(x), n=length(x) ) )

write.table(aggSignalsData[, 1:10] , file = "AggSignalsData.csv", sep = ",", row.names = FALSE)













