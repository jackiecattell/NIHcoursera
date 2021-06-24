library("recommenderlab")
library(tidyverse)
#coursera<-read_csv("combined.csv")
analytics<-read_csv("analytics.csv")
!duplicated(analytics)
data<-analytics[sample(nrow(data), 100000), ]
table(data[c(1:6), c(2,3,7,9)], caption="Reviews Raw Import")
print(table)

#all.data<-merge(analytics.data, coursera.data)

analytics.sample <- sample(analytics[rowCounts(analytics) >10,], 100)
analytics.matrix<-as(analytics, "realRatingMatrix")
print(analytics.matrix)

Rec.model=Recommender(analytics,method="POPULAR") 
getModel(Rec.model)
after_stat(Rec.model)
print(Rec.model)
library(ggplot2)





