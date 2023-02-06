2) 
i)&ii)
 x <-c(90, 50, 70, 80, 70, 60, 20, 30)
result.mean <- mean(x)
print(result.mean)
result.median<-median(x)
print(result.median)
result.mode<-mode(x)
print(result.mode)
min(x[x != min(x)])
max(x[x != max(x)])

3)
airquality[, !(names(airquality) %in% c("Temp","Wind"))]

output:
 

4)
i)

n <- nrow(airquality)    
temp_sum <- sum(airquality$Temp)
mean_temp <- temp_sum/n
mean_temp

 
ii)

first_five_rows <- airquality[1:5,]
first_five_rows

 

iii)

airquality[, !(names(airquality) %in% c("Temp","Wind"))]

 
iv)

coldest_day <- which.min(airquality$Temp)
airquality[coldest_day,]


 
v)

windy_days <- sum(airquality$Wind > 17)
windy_days

 

5)
i)
library(reshape)
t=airquality
summary(t)

 

ii)
melt(t)

 
iii)

t1=melt(t,id.vars=c("Month","Day"))
print(head(t1))

 

iv)

t2=cast(t1, Month + Day ~ variable)
t2

 


6)

i)
library(dplyr)
u<-airquality
missing_values<-colSums(is.na(u))
for (i in 1:ncol(u)) {
  if (missing_values[i]/nrow(u) < 0.1) {
    u <- u[!is.na(u[,i]),]
  } else {
    mean_val <- mean(u[,i], na.rm = TRUE)
    u[is.na(u[,i]),i] <- mean_val
  }
}
print(u)

ii)
x=u[,"Ozone"] 
y=u[,"Solar.R"] 
m1<- lm(x~y)
m1 

 
iii)
plot(x, y, main = "Air Quality",xlab = "Ozone", ylab = "Solar")
abline(lm(x~y,u1=u),col="blue")

 

7)
d=ChickWeight
library(dplyr)
d%>%
  group_by(Diet)%>%
  arrange(weight)
i)
library(reshape)
md=melt(d,id=c("Time","Chick","Diet"))
print(head(md))
ii)
cas=cast(md,Diet~.,mean)
print(cas)
iii)
cas=cast(md,Diet~.,mode(d))
print(cas)


1) a<-iris
sum(is.na(a))
a<-a[1:100,]
set.seed(100)
s<-sample(1:100,80)
irt<-a[s,]
irc<-a[-s,]
y<-irt$Species; x<-irt$Sepal.Length
giit<-glm(y~x,family='binomial')
summary(giit)
nd<-data.frame(x=irc$Sepal.Length)
pv<-predict(giit,nd,type = "response")
prediction<-data.frame(irc$Sepal.Length,irc$Species,pv)
prediction
 
 
8)
d=ChickWeight
library(dplyr)
d%>%
  group_by(Diet)%>%
  arrange(weight)
boxplot(d)

 


9)

9.1

model=lm(weight ~ Time+factor(Diet),dat=ChickWeight)
summary(model)
 

9.2

ndata=data.frame(Time = 10,Diet=1)
prediction=predict(model,newdata = ndata)
prediction

 
9.3

error=data[data$Time==10&data$Diet==1,"weight"] - prediction
error
 

10)

library(ggplot2)
a<-data.frame(Titanic)
ggplot(a, aes(x = Survived)) +
  geom_bar(width=0.5, fill = "coral") 

 

library(ggplot2)
a<-data.frame(Titanic)
ggplot(a, aes(x = Survived,fill=sex)) +
  geom_bar(width=0.5, fill = "coral") 

 

library(ggplot2)
a<-data.frame(Titanic)
ggplot(a, aes(x = Age)) +
  geom_bar(width=0.5, fill = "coral") 

 



11)

11.1

a<-USArrests
summary(a)
str(a)
 


11.1.2,3

c<-max(a$Murder)
print(c)
d<-min(a$Murder)
print(d)
 

11.2

cor(a)
 

b<-median(a$Assault)
print(b)
 

barplot(a$Murder)
 


12)

a<-data.frame(month=c("1,2,3,4,5,6,7,8,9,10,11,12"),
              spends=c("1000,4000,5000,4500,3000,4000,9000,1100,15000,12000,7000,3000"),
              sales=c("9914,40487,50044,34719,42551,94871,118914,158484,131348,78504,36284"))
print(a)

 

