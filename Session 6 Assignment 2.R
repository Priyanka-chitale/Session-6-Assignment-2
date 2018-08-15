##a. Is there any difference in fares by different class of tickets? 
getwd()
setwd("D:/acadgilds/rlecture")
library(readr)
library(dplyr)
train= read_csv("train.csv", col_names = TRUE)
test= read_csv("test.csv", col_names = TRUE)
train = bind_rows(train,test)

## Show a boxplot displaying the distribution of fares by class 
boxplot(Fare~Pclass, data=train, notch=FALSE, 
        col=(c("gold","darkgreen", "blue")),
        main="Summary of Fare for diff Passenger Class", xlab="Pclass", ylab="Fare")

##b. Is there any association with Passenger class and gender? Note - Show a stacked bar chart 

library(ggplot2)
ggplot(train, aes(x=Pclass, fill = factor(Sex)))+ geom_bar(stat = 'Count')