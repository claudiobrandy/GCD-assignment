## Create a tidy data set 
## as required by the course assignment

## Read test and train observations and append them (1st test, then train)

testset<-read.table("./X_test.txt")
trainset<-read.table("./X_train.txt")
observ<-rbind(testset, trainset)


## Read features' names and assign to data frame
## columns

feat<-read.table("./features.txt")
colsf<-feat[,2]
colnames(observ)<-colsf


## Extract only the columns containing "mean" or "std"

meanvec<-grep("mean", tolower(feat$V2))
stdvec<-grep("std", tolower(feat$V2))
meanstdcols<-sort(c(meanvec,stdvec))
obsmeansd<-observ[,meanstdcols]


## Read test and train subjects' code and append them (1st test, then train)

testsubj<-read.table("./subject_test.txt")
trainsubj<-read.table("./subject_train.txt")
subj<-rbind(testsubj, trainsubj)


## Read test and train observations' activities and append them (1st test, then train)

testact<-read.table("./y_test.txt")
trainact<-read.table("./y_train.txt")
act<-rbind(testact, trainact)


## Replace the activity codes by activity names 
## and add the activity names as the first column
## of the observations data set

activ<-read.table("activity_labels.txt")
actnames<- activ[act$V1,2]
obsmeansd<-cbind(Activity=actnames,obsmeansd)


## Add the subject as the new first column of 
## the observations data set

obsmeansd<-cbind(subj,obsmeansd)
names(obsmeansd)[1]<-"Subject"


## Replace column labels for "well-behaved" ones,
## using '_' to replace '-' and ',' 
## and deleting '(' and ')'

tidynames<-gsub("\\(", "",names(obsmeansd))
tidynames<-gsub("\\)", "",tidynames)
tidynames<-gsub("-", "_",tidynames)
tidynames<-gsub(",", "_",tidynames)
names(obsmeansd)<-tidynames

## Create a second data set with the average of
## each variable for each activity and each subject
## and write it to file tidy.txt

avgactsubj<-aggregate(obsmeansd,list(obsmeansd$Activity, obsmeansd$Subject),mean)
avgactsubj<-avgactsubj[,c(3,1,5:90)]
names(avgactsubj)[2]<-"Activity"
write.table(avgactsubj, file = "tidy.txt")
