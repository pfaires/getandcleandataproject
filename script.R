library(data.table)
# load feature data
features <- read.table("features.txt")
features_selected <- features[grep("mean|std", features$V2, ignore.case = TRUE),]
# load activity label data
labels <- data.table(read.table("activity_labels.txt", col.names = c("ActivityCode", "ActivityDesc")), key="ActivityCode")

# 1. Merges the training and the test sets to create one data set.
train_x <- read.table("train/X_train.txt")
test_x <- read.table("test/X_test.txt")
dataset_x <- rbind(train_x, test_x)

train_y <- read.table("train/Y_train.txt", col.names = "ActivityCode")
test_y <- read.table("test/Y_test.txt", col.names = "ActivityCode")
dataset_y <- rbind(train_y, test_y)

subject_train <- read.table("train/subject_train.txt", col.names = "SubJectId")
subject_test <- read.table("test/subject_test.txt", col.names = "SubJectId")
dataset_subjects <- rbind(subject_train, subject_test)
                            
rm(test_x, test_y, train_x, train_y, subject_train, subject_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
tidy_data = data.table(cbind(dataset_subjects, dataset_x[, features_selected$V1], dataset_y))

# 3. Uses descriptive activity names to name the activities in the data set
setkey(tidy_data, "ActivityCode")
tidy_data <- tidy_data[J(labels)]
tidy_data[,ActivityCode:=NULL]

# 4. Appropriately labels the data set with descriptive variable names.
setnames(tidy_data, c("SubjectId", as.character(features_selected$V2), "Activity"))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
ts_5 = tidy_data[, lapply(.SD, mean), by=list(SubjectId, Activity)][order(SubjectId)]
setnames(ts_5, c('SubjectId', "Activity", paste("mean_of_", features_selected$V2, sep="")))

# write table
write.table(ts_5, "data_set_step5.txt", row.names=FALSE)
