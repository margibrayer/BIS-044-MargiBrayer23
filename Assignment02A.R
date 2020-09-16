#date() 
DateTime <- date()
class(DateTime)
typeof(DateTime)

#Difference in dates
AgeDays=as.double(as.Date("2020-12-04")-Sys.Date())
AgeYears=AgeDays/365

# Clean Up 
rm(list=ls(all=TRUE))
cat("\014") 

cat("Margi, there are",AgeDays,"days until the end of the semester")