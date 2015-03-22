# Getting-and-Cleaning-Data
Code Book for the course project of the Coursera's Getting and Cleaning Data


Inputs
-------------
All the data used in my work is contained in the following files:

X_train.txt

y_train.txt

X_test.txt

y_test.txt

subject_train.txt

subject_test.txt

activity_labels.txt

features.txt


These files are part of a data set available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description is available at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
 data.

Variable names 
-------------

the first pass of the data cleaning is a data frame, "tidydata1", with 81 vatiables and 10299 observations.

'data.frame':	10299 obs. of  81 variables

The variable names are:

 names(tidydata1)
 [1] "tbodyaccmeanx"                "tbodyaccmeany"                "tbodyaccmeanz"                "tbodyaccstdx"                
 [5] "tbodyaccstdy"                 "tbodyaccstdz"                 "tgravityaccmeanx"             "tgravityaccmeany"            
 [9] "tgravityaccmeanz"             "tgravityaccstdx"              "tgravityaccstdy"              "tgravityaccstdz"             
[13] "tbodyaccjerkmeanx"            "tbodyaccjerkmeany"            "tbodyaccjerkmeanz"            "tbodyaccjerkstdx"            
[17] "tbodyaccjerkstdy"             "tbodyaccjerkstdz"             "tbodygyromeanx"               "tbodygyromeany"              
[21] "tbodygyromeanz"               "tbodygyrostdx"                "tbodygyrostdy"                "tbodygyrostdz"               
[25] "tbodygyrojerkmeanx"           "tbodygyrojerkmeany"           "tbodygyrojerkmeanz"           "tbodygyrojerkstdx"           
[29] "tbodygyrojerkstdy"            "tbodygyrojerkstdz"            "tbodyaccmagmean"              "tbodyaccmagstd"              
[33] "tgravityaccmagmean"           "tgravityaccmagstd"            "tbodyaccjerkmagmean"          "tbodyaccjerkmagstd"          
[37] "tbodygyromagmean"             "tbodygyromagstd"              "tbodygyrojerkmagmean"         "tbodygyrojerkmagstd"         
[41] "fbodyaccmeanx"                "fbodyaccmeany"                "fbodyaccmeanz"                "fbodyaccstdx"                
[45] "fbodyaccstdy"                 "fbodyaccstdz"                 "fbodyaccmeanfreqx"            "fbodyaccmeanfreqy"           
[49] "fbodyaccmeanfreqz"            "fbodyaccjerkmeanx"            "fbodyaccjerkmeany"            "fbodyaccjerkmeanz"           
[53] "fbodyaccjerkstdx"             "fbodyaccjerkstdy"             "fbodyaccjerkstdz"             "fbodyaccjerkmeanfreqx"       
[57] "fbodyaccjerkmeanfreqy"        "fbodyaccjerkmeanfreqz"        "fbodygyromeanx"               "fbodygyromeany"              
[61] "fbodygyromeanz"               "fbodygyrostdx"                "fbodygyrostdy"                "fbodygyrostdz"               
[65] "fbodygyromeanfreqx"           "fbodygyromeanfreqy"           "fbodygyromeanfreqz"           "fbodyaccmagmean"             
[69] "fbodyaccmagstd"               "fbodyaccmagmeanfreq"          "fbodybodyaccjerkmagmean"      "fbodybodyaccjerkmagstd"      
[73] "fbodybodyaccjerkmagmeanfreq"  "fbodybodygyromagmean"         "fbodybodygyromagstd"          "fbodybodygyromagmeanfreq"    
[77] "fbodybodygyrojerkmagmean"     "fbodybodygyrojerkmagstd"      "fbodybodygyrojerkmagmeanfreq" "subject"                     
[81] "activity"

The original format of the names in the "feature.txt file" have been replaced by a lower case, no punctuation or special characters one. Still the names have maintained most of the original information.

The second and final pass of the data cleaning required by this project "tidydata2" is a data frame with 81 variable and 180 observations. The data names are the same but now  subject and activity variables are at two first columns of the frame.

'data.frame':	180 obs. of  81 variables

 names(tidydata2)
 [1] "subject"                      "activity"                     "tbodyaccmeanx"                "tbodyaccmeany"               
 [5] "tbodyaccmeanz"                "tbodyaccstdx"                 "tbodyaccstdy"                 "tbodyaccstdz"                
 [9] "tgravityaccmeanx"             "tgravityaccmeany"             "tgravityaccmeanz"             "tgravityaccstdx"             
[13] "tgravityaccstdy"              "tgravityaccstdz"              "tbodyaccjerkmeanx"            "tbodyaccjerkmeany"           
[17] "tbodyaccjerkmeanz"            "tbodyaccjerkstdx"             "tbodyaccjerkstdy"             "tbodyaccjerkstdz"            
[21] "tbodygyromeanx"               "tbodygyromeany"               "tbodygyromeanz"               "tbodygyrostdx"               
[25] "tbodygyrostdy"                "tbodygyrostdz"                "tbodygyrojerkmeanx"           "tbodygyrojerkmeany"          
[29] "tbodygyrojerkmeanz"           "tbodygyrojerkstdx"            "tbodygyrojerkstdy"            "tbodygyrojerkstdz"           
[33] "tbodyaccmagmean"              "tbodyaccmagstd"               "tgravityaccmagmean"           "tgravityaccmagstd"           
[37] "tbodyaccjerkmagmean"          "tbodyaccjerkmagstd"           "tbodygyromagmean"             "tbodygyromagstd"             
[41] "tbodygyrojerkmagmean"         "tbodygyrojerkmagstd"          "fbodyaccmeanx"                "fbodyaccmeany"               
[45] "fbodyaccmeanz"                "fbodyaccstdx"                 "fbodyaccstdy"                 "fbodyaccstdz"                
[49] "fbodyaccmeanfreqx"            "fbodyaccmeanfreqy"            "fbodyaccmeanfreqz"            "fbodyaccjerkmeanx"           
[53] "fbodyaccjerkmeany"            "fbodyaccjerkmeanz"            "fbodyaccjerkstdx"             "fbodyaccjerkstdy"            
[57] "fbodyaccjerkstdz"             "fbodyaccjerkmeanfreqx"        "fbodyaccjerkmeanfreqy"        "fbodyaccjerkmeanfreqz"       
[61] "fbodygyromeanx"               "fbodygyromeany"               "fbodygyromeanz"               "fbodygyrostdx"               
[65] "fbodygyrostdy"                "fbodygyrostdz"                "fbodygyromeanfreqx"           "fbodygyromeanfreqy"          
[69] "fbodygyromeanfreqz"           "fbodyaccmagmean"              "fbodyaccmagstd"               "fbodyaccmagmeanfreq"         
[73] "fbodybodyaccjerkmagmean"      "fbodybodyaccjerkmagstd"       "fbodybodyaccjerkmagmeanfreq"  "fbodybodygyromagmean"        
[77] "fbodybodygyromagstd"          "fbodybodygyromagmeanfreq"     "fbodybodygyrojerkmagmean"     "fbodybodygyrojerkmagstd"     
[81] "fbodybodygyrojerkmagmeanfreq"

Output
--------

Finally this data frame is saved in a text file named "tidydata2.txt" located at the working directory once the scrip run is completed.
     