# This is the data wrangling part of the final assignment. 
# The data used is Student that has been downloaded from https://archive.ics.uci.edu/ml/machine-learning-databases/00320/. 
# In this assignment we are using only data of Portugese students (n = 649).

d = read.table("student-por.csv", sep = ";", header = TRUE)

# The objective is to predict the final grade "G3" that will be renamed as "Grade":

d$Grade <- d$G3

# Since the data is quite small, it is probably not fruitful toTo simplify the data for this exercise, let's replace ordinal variables with their binary versions:

d$MeduHigh <- ifelse(d$Medu > 2, 1, 0)
d$FeduHigh <- ifelse(d$Fedu > 2, 1, 0)
d$traveltime30min <- ifelse(d$traveltime > 2, 1, 0)
d$studytime5h <- ifelse(d$studytime > 2, 1, 0)
d$famrelGood <- ifelse(d$famrel > 3, 1, 0)
d$freetimeHigh <- ifelse(d$freetime > 3, 1, 0)
d$gooutHigh <- ifelse(d$goout > 3, 1, 0)
d$DalcHigh <- ifelse(d$Dalc > 3, 1, 0)
d$WalcHigh <- ifelse(d$Walc > 3, 1, 0)
d$healthGood <- ifelse(d$health > 3, 1, 0)

# We'll also remove all the variables that are not used in the regression:

d$Medu <- NULL
d$Fedu <- NULL
d$traveltime <- NULL
d$studytime <- NULL
d$famrel <- NULL
d$freetime <- NULL
d$freetime <- NULL
d$goout <- NULL
d$Dalc <- NULL
d$Walc <- NULL
d$health <- NULL
d$G1 <- NULL
d$G2 <- NULL
d$G3 <- NULL
