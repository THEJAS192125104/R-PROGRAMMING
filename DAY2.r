Q1

v1=c(1,2,3,4)
v2=c(5,6,7,8)
print(v1)
print(v2)
result=array(c(v1,v2),dim=c(3,3,2))
print(result)
print("2nd matrix: ")
print(result[2,,2])
print(result[3,3,1])

output:
v1=c(1,2,3,4)
> v2=c(5,6,7,8)
> print(v1)
[1] 1 2 3 4
> print(v2)
[1] 5 6 7 8
> result=array(c(v1,v2),dim=c(3,3,2))
> print(result)
, , 1

     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    1

, , 2

     [,1] [,2] [,3]
[1,]    2    5    8
[2,]    3    6    1
[3,]    4    7    2

> print("2nd matrix: ")
[1] "2nd matrix: "
> print(result[2,,2])
[1] 3 6 1
> print(result[3,3,1])
[1] 1
> print("2nd matrix: ")
[1] "2nd matrix: "
> print(result[2,,2])
[1] 3 6 1
> print(result[3,3,1])
[1] 1
> 

Q 2)
num1 = rbind(rep("A",3), rep("B",3), rep("C",3))
print("num1")
print(num1)
num2 = rbind(rep("P",3), rep("Q",3), rep("R",3))
print("num2")
print(num2)
num3 = rbind(rep("X",3), rep("Y",3), rep("Z",3))
print("num3")
print(num3)
a = matrix(t(cbind(num1,num2,num3)),ncol=3, byrow=T)
print(a)



OUTPUT

> num1 = rbind(rep("A",3), rep("B",3), rep("C",3))
> print("num1")
[1] "num1"
> print(num1)
     [,1] [,2] [,3]
[1,] "A"  "A"  "A" 
[2,] "B"  "B"  "B" 
[3,] "C"  "C"  "C" 
> num2 = rbind(rep("P",3), rep("Q",3), rep("R",3))
> print("num2")
[1] "num2"
> print(num2)
     [,1] [,2] [,3]
[1,] "P"  "P"  "P" 
[2,] "Q"  "Q"  "Q" 
[3,] "R"  "R"  "R" 
> num3 = rbind(rep("X",3), rep("Y",3), rep("Z",3))
> print("num3")
[1] "num3"
> print(num3)
     [,1] [,2] [,3]
[1,] "X"  "X"  "X" 
[2,] "Y"  "Y"  "Y" 
[3,] "Z"  "Z"  "Z" 
> a = matrix(t(cbind(num1,num2,num3)),ncol=3, byrow=T)
> print(a)
      [,1] [,2] [,3]
 [1,] "A"  "A"  "A" 
 [2,] "P"  "P"  "P" 
 [3,] "X"  "X"  "X" 
 [4,] "B"  "B"  "B" 
 [5,] "Q"  "Q"  "Q" 
 [6,] "Y"  "Y"  "Y" 
 [7,] "C"  "C"  "C" 
 [8,] "R"  "R"  "R" 
 [9,] "Z"  "Z"  "Z" 
 
 Q 3)
 
