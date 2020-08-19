setwd("~/Desktop/fairness")
library(foreign)
library(haven)
library(ggplot2)
db = file.choose()
fairness<-read.spss(db, to.data.frame = TRUE)
#Frequancy Histogram 
as.factor(fairness$StudyID)
fairness_split<-split(fairness, fairness$StudyID)
#studyid=3
count_3_pre<-fairness_split$`3`[,c(6:9,11:14,16:19,21:24)]
count_3<-as.data.frame(table(unlist(count_3_pre)))
bar_3<-barplot(count_3$Freq,names.arg=count_3$Var1,xlab="Choices",ylab="Frequency",col="orange",
               main="Frequance of Choices ",sub = "(6 years old)")
#studyid=4
count_4_pre<-fairness_split$`4`[,c(6:9,11:14,16:19,21:24)]
count_4<-as.data.frame(table(unlist(count_4_pre)))
bar_4<-barplot(count_4$Freq,names.arg=count_4$Var1,xlab="Choices",ylab="Frequency",col="orange",
               main="Frequance of Choices ",sub = "(3 and 4 years old)")
