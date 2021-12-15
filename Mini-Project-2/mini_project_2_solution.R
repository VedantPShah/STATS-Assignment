########################################
# Exercise 1 #
########################################
#read data
roadrace <- read.csv("roadrace.csv", na.strings = "*")
attach(roadrace)
colnames(roadrace)
#barplot and summary statistics
barplot(table(Maine), main = "Barplot for Maine")
table(Maine)
prop.table(table(Maine))
#histrogram for runner's time
maine <- subset(roadrace, Maine == "Maine")$Time..minutes.
away <- subset(roadrace, Maine == "Away")$Time..minutes.
#sumamry statistics
summary(maine)
IQR(maine)
summary(away)
IQR(away)
#histograms
hist(maine, xlim = c(min(a), max(m)), ylim = c(0, 2000), xlab = "Time", main = "Histogram of Maine")
hist(away, xlim = c(min(a), max(m)), ylim = c(0, 2000), xlab = "Time", main = "Histogram of Away")
#side by side boxplot
boxplot(Time..minutes.~Maine)
#side by boxplot and summary for sex
male <- Age[Sex == "M"]
female <- Age[Sex == "F"]
boxplot(male, female, names = c("M", "F"))
summary(male)
summary(female)
###################################################
# Exercise 2 #
##################################################
motor <- read.csv("motorcycle.csv")
attach(motor)

#boxplot
boxplot(Fatal.Motorcycle.Accidents)
#outliers
box <-boxplot(Fatal.Motorcycle.Accidents)
box$out
tail(motor[order(Fatal.Motorcycle.Accidents), ], 2)
#summary statistics
summary(Fatal.Motorcycle.Accidents)
