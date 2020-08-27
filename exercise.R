#assignment 5

#question no. 1
miles=c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)
x=diff(miles)
x  #[1] 313 284 311 280 322 324 302

min(x)  #[1] 280
max(x)  #[1] 324
mean(x) #[1] 305.1429


#question no. 2
ctime=c(17, 16, 20, 24, 22, 15, 21, 15, 17, 22)

max(ctime)  #[1] 24
mean(ctime) #[1] 18.9
min(ctime)  #[1] 15
ctime[-4]   #[1] 17 16 20 22 15 21 15 17 22
ctime[4]=18 
ctime       #[1] 17 16 20 18 22 15 21 15 17 22
sum( ctime >= 20)  #[1] 4
sum( ctime <= 17)  #[1] 5
percentage=(sum( ctime <= 17)/length(ctime))*100
percentage  #[1] 50


#question no. 3
bill=c(46, 33, 39, 37, 46, 30, 48, 32, 49, 35, 30, 48)

sum(bill)  #[1] 473
min(bill)  #[1] 30
max(bill)  #[1] 49
sum(bill >= 40)  #[1] 5
percentage=(sum(bill <= 40)/length(bill))*100
percentage  #[1] 58.33333


#question no. 4
prices=c(9000, 9500, 9400, 9400, 10000, 9500, 10300, 10200)

average=(sum(prices))/length(prices)
average  #[1] 9662.5
max(prices)  #[1] 10300
min(prices)  #[1] 9000
# I would like to pay the minimum price.

#question no. 5
x = c(1,3,5,7,9)
y = c(2,3,5,7,11,13)

#1st bit
x+1  #[1]  2  4  6  8 10

#2nd bit
y*2  #[1]  4  6 10 14 22 26

#3rd bit 
length(x)  #[1] 5
length(y)  #[1] 6

#4th bit
x+y    # [1]  3  6 10 14 20 14
       # Warning message:
       # In x + y : longer object length is not a multiple of shorter object length

#5th bit
sum(x>5)  #[1] 2
sum(x[x>5]) #add the numbers that are greater than 5 in the list x.
            # output: [1] 16
#6th bit
sum(x>5 | x< 3) #print the total number of items that are greater than 5 and less than3 in the list.
                #output: [1] 3
#7th bit
y[3]  #[1] 5

#8th bit
y[-3]  #print the list without the value in the third position.
       #output: [1]  2  3  7 11 13

#9th bit
y[x]  #[1]  2  5 11 NA NA
#NA: missing values are represented by NA in R

#10th bit
y[y>=7]  #[1]  7 11 13


#question no. 6
x = c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5)  

#1st bit
average=sum(x)/length(x)
average  #[1] 4.8

#2nd bit
log(x)  #[1] 0.0000000 2.0794415 0.6931472 1.7917595 1.0986123 2.0794415 1.6094379
        #[8] 1.6094379 1.6094379 1.6094379

log(sum(x))  #[1] 3.871201

#3rd bit
(sum(x)-4.4)/2.875  #[1] 15.16522
(x-4.4)/2.875  #[1] -1.1826087  1.2521739 -0.8347826  0.5565217 -0.4869565  1.2521739
               #[7]  0.2086957  0.2086957  0.2086957  0.2086957

#4th bit
max(x)  #[1] 8
min(x)  #[1] 1
range(x)  #[1] 1 8
diff(range(x))  #[1] 7





