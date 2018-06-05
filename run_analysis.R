
# -------------------------------------------------------------------------
# Load Libraries
# -------------------------------------------------------------------------

library(tidyverse)

# -------------------------------------------------------------------------
# Download Data
# -------------------------------------------------------------------------

dir.create("Data")
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "Data/UCI HAR Dataset.zip")
unzip("Data/UCI HAR Dataset.zip", exdir = "Data/")

# -------------------------------------------------------------------------
# 1. Merge Training and Test Datasets
# -------------------------------------------------------------------------

# Read training data

train.x    <- read.table("Data/UCI HAR Dataset/train/X_train.txt")
train.y    <- read.table("Data/UCI HAR Dataset/train/y_train.txt")
train.sub  <- read.table("Data/UCI HAR Dataset/train/subject_train.txt")

# Read test data

test.x     <- read.table("Data/UCI HAR Dataset//test/X_test.txt")
test.y     <- read.table("Data/UCI HAR Dataset/test//y_test.txt")
test.sub   <- read.table("Data/UCI HAR Dataset/test/subject_test.txt")

# Bind subject id, activity label, and test datasets

train.data <- cbind(train.sub, train.y, train.x)
test.data  <- cbind(test.sub,  test.y,  test.x)

# Merge training and test datasets

data <- rbind(train.data, test.data)

# Remove individual datasets

rm(train.data, test.data,
   train.x,    test.x,
   train.y,    test.y,
   train.sub,  test.sub)

# -------------------------------------------------------------------------
# 2. Label Data Set with Descriptive Variable Names
# -------------------------------------------------------------------------

# Get variable names

feature.names <- read.table("Data/UCI HAR Dataset/features.txt")
var.names <- c("subject.id", "activity", as.vector(feature.names$V2))

# Clean variable names

var.names <- gsub("-mean\\(\\)-", "Mean", var.names)
var.names <- gsub("-std\\(\\)-",  "Std",  var.names)

names(data) <- var.names

# -------------------------------------------------------------------------
# 3. Extract Only Mean and Standard Deviation Measurements
# -------------------------------------------------------------------------

# Select mean or standard deviation measurements

var.keep <- var.names[c(1, 2, grep("Mean|mean|Std|std", var.names))]

# Subset mean and standard deviation variables

data.mean.std <- data[ , var.keep]

# -------------------------------------------------------------------------
# 4. Use Descriptive Activity Names
# -------------------------------------------------------------------------

activity.labels <- read.table("Data/UCI HAR Dataset//activity_labels.txt")
names(activity.labels) <- c("code", "name")

for (i in 1:nrow(data.mean.std)) {
  activity.code = data.mean.std$activity[i]
  activity.desc = filter(activity.labels, code == activity.code)
  activity.desc = as.character(activity.desc[1, "name"])
  data.mean.std$activity[i] <- activity.desc
}

# -------------------------------------------------------------------------
# 5. Create Tidy Data
# -------------------------------------------------------------------------

data.tidy <- group_by(data.mean.std, subject.id, activity) %>%
  summarise_all(funs(mean))

write.table(data.tidy, "tidy_data.txt", row.name=FALSE)

rm(list = ls())
