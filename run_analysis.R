#Loading packages

library("dplyr") 
library("reshape2")

# Reading the data from the files. 
# The following 8 files are needed:
#
# 1. X_train.txt
# 2. y_train.txt
# 3. X_test.txt
# 4. y_test.txt
# 5. subject_train.txt
# 6. subject_test.txt
# 7. activity_labels.txt
# 8. features.txt
#
# These files are expected to be in the working directory

trainingdata<-read.table("X_train.txt")
traininglabels<-read.table("y_train.txt")

testdata<-read.table("X_test.txt")
testlabels<-read.table("y_test.txt")

subjecttrain<-read.table("subject_train.txt")
subjecttest<-read.table("subject_test.txt")

activity<-read.table("activity_labels.txt", as.is=c(1:2))
features<-read.table("features.txt", as.is=c(1:2))

# 1. Merge the training and test data sets

data<-rbind(trainingdata,testdata)

# 2. Extract only the measurements on the mean and standard deviation. 

names(data)<-features$V2

data<-data[,grep(".*(mean|std).*", names(data), value=T)]

# 3. Add descriptive activity names using the activity labels

labels<-rbind(traininglabels,testlabels)
data$labels<-labels$V1

subject<-rbind(subjecttrain,subjecttest)
data$subject<-subject$V1

data<-merge(data,activity,by.x="labels", by.y="V1", all=T)
tidydata1<-data[,-1]


# 4. Appropriately labels the data set with descriptive variable names.
#    Names in the features.txt file were modified tocomply with requirements
#    Only lower case and no punctuation or special charactes

names(tidydata1)<-c(tolower(gsub("[ ()_-]|,","",names(tidydata1[,1:79]))),"subject", "activity")

# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.

meltdata <- melt(tidydata1,id.vars= c("subject","activity"))
tidydata2 <- dcast(meltdata, subject+activity ~ variable, fun.aggregate=mean)

# Save data set as a text file

write.table(tidydata2,file= "tidydata2.txt", row.names = F)


