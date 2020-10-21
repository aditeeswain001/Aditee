# Section 8: Exploratory Data Analysis

# Assignment 5.11

# Question 1

#Attach the data set babies . Describe the distributions of the variables
#birth weight (bwt), gestation, age, height and weight.

data(package="UsingR", babies)
attach(babies)

boxplot(wt, horizontal=T, main="Wt: symmetric, long")

boxplot(gestation, horizontal=T, main="Gestation: skewed, long")

boxplot(age, horizontal=T, main="Age: skewed, regular")

boxplot(ht, horizontal=T, main="Ht: symmetric, regular")

#using wt1

boxplot(wt1, horizontal=T, main="Wt1: skewed, long")

detach(babies)


# Question 2

#The Simple data set iq contains simulated scores on a hypothetical IQ
#test. What analysis is appropriate for measuring the center of the
#distribution? Why?


data(package="UsingR", iq)

boxplot(iq, horizontal=T, main="8.2 - iq: symmetric, regular")

#given this plot, the mean should be used for analysis on iq


# Question 3

#The Simple data set slc contains data on red blood cell sodium-lithium
#countertransport activity for 190 individuals. Describe the shape of the
#distribution, estimate the center, state what is an appropriate measure
#of center for this data.


data(package="UsingR", slc)

boxplot(slc, horizontal=T, main="8.3 - slc: skewed, regular")

#given this plot, the median should be used for analysis on slc


# Question 4

#The t distribution will be important later. It depends on a parameter
#called the degrees of freedom. Use the rt(n,df) function to investigate
#the t-distribution for n=100 and df=2, 10 and 25.

#Comparison of t-distribution and DF"

boxplot(rt(100,2), horizontal=T, main="rt(100, df=2)")
boxplot(rt(100,10), horizontal=T, main="rt(100, df=10)")
boxplot(rt(100,25), horizontal=T, main="rt(100, df=25)")

#Student's t-distribution appears to be slightly skewed for lower df,
#approaching a more symmetric distribution at higer df values 
#t-distribution is sometimes used in place of normal when the real data 
#includes heavy tails: robust parametric modelling


# Question 5

#The X^2 distribution also depends on a parameter called the degrees of 
#freedom. Use the rchisq(n,df) function to investigate the 
#X^2 distribution with n=100 and df=2,10 and 25.

#Comparison of Chi-squared distribution and DF

boxplot(rchisq(100,2), horizontal=T, main="rchisq(100, df=2)")
boxplot(rchisq(100,10), horizontal=T, main="rchisq(100, df=10)")
boxplot(rchisq(100,25), horizontal=T, main="rchisq(100, df=25)")

#Like Student's t, Chi-squared appears to be skewed for lower df, 
#approaching a more symmetric distribution at higer df values


# Question 6

#The R dataset trees contains girth (diameter), height and volume
#(of boardfeet) measurements for several trees of a species of cherry 
#tree. Describe the distributions of each of these 3 variables. Are any
#long tailed, short-tailed, skewed?


data(trees)
summary(trees)

#output
#      Girth           Height       Volume     
#  Min.   : 8.30   Min.   :63   Min.   :10.20  
#  1st Qu.:11.05   1st Qu.:72   1st Qu.:19.40  
#  Median :12.90   Median :76   Median :24.20  
#  Mean   :13.25   Mean   :76   Mean   :30.17  
#  3rd Qu.:15.25   3rd Qu.:80   3rd Qu.:37.30  
#  Max.   :20.60   Max.   :87   Max.   :77.00  

boxplot(trees$Girth, horizontal=T, main="Girth: skewed, regular")

boxplot(trees$Height, horizontal=T, main="Height: slightly-skewed, 
        regular")

boxplot(trees$Volume, horizontal=T, main="Volume: skewed, regular")



# Question 7

#The Simple dataset dowdata contains the Dow Jones numbers from January
#1999 to October 2000. The Black-Scholes theory is modeled on the
#assumption that the changes in the data within a day should be log
#normal.

#Now check if z is normal. What do you see?


data(dowdata)
summary(dowdata)
#        Date          Open            High            Low       
#  1-Apr-99:  1   Min.   : 9118   Min.   : 9268   Min.   : 8994  
#  1-Aug-00:  1   1st Qu.:10402   1st Qu.:10602   1st Qu.:10217  
#  1-Dec-99:  1   Median :10714   Median :10890   Median :10553  
#  1-Feb-00:  1   Mean   :10609   Mean   :10777   Mean   :10448  
#  1-Feb-99:  1   3rd Qu.:11008   3rd Qu.:11172   3rd Qu.:10845  
#  1-Jul-99:  1   Max.   :11719   Max.   :11908   Max.   :11506  
#  (Other) :437                                                  
#  
#       Close      
#   Min.   : 9121  
#   1st Qu.:10401  
#   Median :10719  
#   Mean   :10609  
#   3rd Qu.:11006  
#   Max.   :11723  

x <- dowdata$Close
n <- length(x)
z <- log(x[2:n]/x[1:(n-1)])

par(mfrow=c(1,3), oma=c(0,0,2,0))

hist(x, main="hist(x)")
boxplot(x, main="boxplot(x)")
qqnorm(x, main="qqnorm(x)") 
qqline(x, col="red")
title("Dowdata: without logarithmic transformation", outer=T)

par(mfrow=c(1,3), oma=c(0,0,2,0))

hist(z, main="hist(z)")
boxplot(z, main="boxplot(z)")
qqnorm(z, main="qqnorm(z)") 
qqline(z, col="red")
title("Dowdata: with logarithmic transformation", outer=T)


# Question 8

#The children's game of Chutes and Ladders can be simulated easily in R.
#The time it takes for a player to make it to the end has an interesting
#distribution. To simulate the game, you can use the Simple function
#simple.chutes

#Describe the resulting distribution in words. What percentage of the 
#time did it take more than 100 turns?

#What is the median and compare it to the mean of your sample.


results <- c()
for (i in 1:200) results[i]=length(simple.chutes(sim=T))

#results are skewed, long-tailed,

par(mfrow=c(1,3), oma=c(0,0,2,0))

hist(results, main="hist(results)")
boxplot(results, main="boxplot(results)")
qqnorm(results, main="qqnorm(results)")
qqline(results, col="red")

title("Chutes & Ladders: histogram, boxplot & normal plot", outer=T)

#  ... percentage of results > 100?

sum(results>100)/n

#output
#> sum(results>100)/n
#[1] 0.02708804

#  ... compare median and mean

summary(results)

#output
#summary(results)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#10.00   24.00   35.00   45.69   56.00  267.00 

par(mfrow=c(1,1))
plot(simple.chutes(1), main="Trajectory of Chutes & Ladders")
