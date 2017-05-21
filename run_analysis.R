#Load the required packages
library(data.table)
library(dplyr)
library(reshape)

#1.Read the data for the training and the test data sets 
#The merge them to create one data set
training_data <- tbl_df(fread("UCI_HAR_Dataset/train/X_train.txt"))
test_data <- tbl_df(fread("UCI_HAR_Dataset/test/X_test.txt"))
merged_data <- bind_rows(training_data,test_data)

#2.Extracts only the measurements on the mean and standard deviation 
#for each measurement.

#Step 2.1, read features.txt file where in the second column, the column names
#for merged_data exists
features <- tbl_df(fread("UCI_HAR_Dataset/features.txt"))
col_names  <- as.data.frame(features)[,2]

#Step 2.2, subgroup merged_data by only selecting columns with column names std()
#or mean()
search <- grepl("mean\\(\\)|std\\(\\)",col_names)
selected_data  <- merged_data[,which(search)] #which returns the index when search=TRUE

#Assign the selected names from features.txt to each column in selected_data
selected_names <- col_names[which(search)] 
names(selected_data) <-  selected_names

#3.Uses descriptive activity names to name the activities in the data set

#Step 3.1, the activity label numbers are kept in test/y_test.txt and train/y_train.txt
#First need to bind this two sets in the same order done above for test and train datasets
training_label <- tbl_df(fread("UCI_HAR_Dataset/train/y_train.txt"))
test_label <- tbl_df(fread("UCI_HAR_Dataset/test/y_test.txt"))
merged_label <- bind_rows(training_label,test_label)

#Step 3.2, now we have one column of data including the numbers for the activity labels
#Name this only column as activityKey
names(merged_label) <- "activityKey"

#Step 3.3, the activity labels corresponding to numbers (1-6) are kept in 
#activity_labels.txt so read this file first.
#Add a new column to selected_data and get the activity name from this file 
#for each number listed in activityKey column of merged_label
activity_labels <- tbl_df(fread("UCI_HAR_Dataset/activity_labels.txt"))
activity_names  <- as.data.frame(activity_labels)[,2]
selected_data   <- mutate(selected_data, activityName = activity_names[merged_label$activityKey])

#4.Appropriately labels the data set with descriptive variable names.
variable_names <- names(selected_data) %>%
                  gsub("^t","Time",.) %>%
                  gsub("^f","Frequency",.) %>%
                  gsub("Gyro","Gyroscope",.)  %>%
                  gsub("-mean\\(\\)-","Mean",.)  %>%
                  gsub("-std\\(\\)-","StandardDeviation",.) %>%
                  gsub("-mean\\(\\)","Mean",.)  %>%
                  gsub("-std\\(\\)","StandardDeviation",.) %>%
                  gsub("Mag","Magnitude",.)

names(selected_data) <- variable_names

#5.From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.

#Step 5.1, the subject labels are kept in test/subject_test.txt and train/subject_train.txt
#First need to bind this two sets in the same order done above for test and train datasets
training_subject <- tbl_df(fread("UCI_HAR_Dataset/train/subject_train.txt"))
test_subject <- tbl_df(fread("UCI_HAR_Dataset/test/subject_test.txt"))
merged_subject <- bind_rows(training_subject,test_subject)

#Give a name to the merged subject data (only one column) and add it to selected_data
names(merged_subject) <-  "subjectID"
selected_data <- bind_cols(selected_data, merged_subject)
selected_data  <- as.data.frame(selected_data)
selected_data_melt <- melt(selected_data, id=c("activityName","subjectID"))
tidy_data <- dcast(selected_data_melt, subjectID + activityName ~ variable, mean)

write.table(tidy_data, file = "./tidy_data.txt",row.name=FALSE)


