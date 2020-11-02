read.csv("USvideos.csv")
Df<- read.csv("USvideos.csv")
View(Df)
str(Df)
Df$trending_date<-as.Date(Df$trending_date,format = "%y.%d.%m")
print(Df$trending_date)
class(Df$trending_date)

library(dplyr)

Df1<-separate(Df,col=publish_time, into=c("PDate", "Ptime"), "T")
str(Df1)
Df1$PDate<-as.Date(Df1$PDate,format = "%Y-%m-%d")
class(Df1$PDate)
View(Df1)

Df1$Ptime<-as.POSIXct(Df1$Ptime, format="%H:%M:%OSZ", tz="GMT")
class(Df1$Ptime)

library(stringr)
Df$title<-str_to_title(Df$title)
View(Df)
View(Df1)
#The first two tasks are in DF1 and the last one is in DF