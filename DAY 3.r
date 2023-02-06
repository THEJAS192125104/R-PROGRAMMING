Q1)
i)
recurse_fibonacci <- function(n) {
if(n <= 1) {
return(n)
} else {
return(recurse_fibonacci(n-1) + recurse_fibonacci(n-2))
}
}
nterms = as.integer(readline(prompt="How many terms? "))
if(nterms <= 0) {
print("Plese enter a positive integer")
} else {
print("Fibonacci sequence:")
for(i in 0:(nterms-1)) {
print(recurse_fibonacci(i))
}
}

ii)
sum=0
n=5;
for(i in 1:n){
 sum=sum+i
}
print(sum)
b=1:10
for(i in b){
 a=i*i
 print(list(i))
}
Output:
iii)
vec=1:10
squared_vec=vec^2
print(squared_vec)
2)
i) mtcars
# i)dimension of data set
dim(mtcars)
Output:-

ii)statistical summary
summary(mtcars)
Output:-
# iii)categorical features in dataset
str(mtcars)
output:-
# iv)average wt group by engine shape
aggregate(wt ~ vs,data = mtcars,mean)
output:-
# v)find largest & smallest weight with engine shape
library(dplyr)
mtcars %>% 
 group_by(vs) %>% 
 summarise(min_wt = min(wt), max_wt = max(wt))
output:-
PROGRAM:-3
library(ggplot2)
data=mtcars
# (i) weight vs displacement scatter plot factor by Engine Shape
ggplot (data, aes(x=disp, y=wt, color=vs)) + 
 geom_point() + ggtitle("Weight vs Displacement by Engine Shape")
output:-
# (ii) horsepower vs mileage scatter plot factor by Engine Shape
ggplot(data, aes(x=mpg, y=hp, color=vs)) + 
 geom_point() + ggtitle("Mileage vs Horsepower by Engine Shape")
output:-
# (iii) horsepower vs mileage scatter plot factor by Cylinder Size
ggplot(data, aes(x=mpg, y=hp, color=cyl)) + 
 geom_point() + ggtitle("Mileage vs Horsepower by Cylinder Size")
output:-
# (iv) histogram plot of horsepower with bin-width of 5
ggplot(data, aes(x=hp)) + 
 geom_histogram(binwidth=5) + 
 ggtitle("Horsepower Histogram with Bin Width of 5")
output:-
