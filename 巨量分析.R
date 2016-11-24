#註解
x<-5
x

#第一個程式
y<-c(1,2,3,4,5)
plot(y)

#c宣告陣列做一個連結  plot可畫出一張圖
z<-c(5,10,15,20,25)
plot(y,z)

#圖形示範
demo(graphics)

#iris   date用函數叫出iris

date(iris)
plot(iris)

#台灣地圖
install.packages("ggmap")
library("ggmap")
map.taiwan <- get_map(location="Taiwan" , zoom=8)
ggmap(map.taiwan)

#套件安裝  install=安裝
install.packages("C50")

#套件載入  library=載入
library(50)

#套件移除
remove.packages("C50")

#套件更新
update.packages()

#R練習   sqrt=開根號
x <- 10
x
y <- x^2
y
z <- sqrt(y)
z

#型態(mode)與長度(length)
#numeric→數值型態
x1<-10
mode(x1)
length(x1)

x2<-10.11
mode(x2)
length(x2)

#T→保留、關鍵字
x3<-T
mode(x3)
length(x3)

#character"→文字型態
x4<- "Hello"
mode(x4)
length(x4)

x5<-4+2i
mode(x5)
length(x5)

x6<- c(1,2,3,4,5)
mode(x6)
length(x6)

#vector(向量)
v <- c(10,5,3.1,6.4,9.2,21.7)
v
length(v)
mode(v)

#缺值  :=到
v <- c(10,5,NA,6.4,9.2,21.7)
v
v[2]
v2 <- 1:10
v2

#matrix(矩陣)   →列  ↑行  byrow=按列來寫
x <- matrix(1:24, nrow=4,ncol=6,byrow=TRUE)
x
x <- matrix(1:24, nrow=4,ncol=6,byrow=FALSE)
x

#cbind()&rbind()
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1,x2,x3)
xc
xr <- rbind(x1,x2,x3)
xr

#matrix的轉置(transposition)
xc_t <- t(xc)
xc_t
nrow(x)
ncol(x)
x[1,]   #取出第一行
x[,2]   #取出第二列
x[2,3]  #取出某一個值
eigen(xc)
z <- xc %*% xr  #矩陣相乘要用%夾起來
z

#array(陣列)
#二維
x <- 1:24
dim(x) <- c(4,6)            #兩段是一樣的(非正式寫法)
                            #    ↑↓
x <- array(1:24, dim=c(4,6))#兩段是一樣的(正式寫法)
x
x[2,3]
#三維
dim(x) <- c(3,4,2)            #兩段是一樣的(非正式寫法)
x                             #    ↑↓
x <- array(1:24, dim=c(3,4,2))#兩段是一樣的(正式寫法)
x 
x[2,3,1]
x[3,1,2]

#factor(因子)
x <- factor(c("男","女","男","男","女"))
x

#dataframe(資料框架)
id <- c(1,2,3,4)
age <- c(25,30,35,40)
sex <- c("Male","Male","Female","Female")
pay <- c(30000,40000,45000,50000)
x_datafram <- data.frame(id,age,sex,pay)
x_datafram
x_datafram[3,2]
x_datafram[4,]
x_datafram[2]
x_datafram$age  #$=[]
x_datafram <- edit (x_datafram)
x_datafram

#list列表
id <- c(1,2,3)
sex <- c("Male","Male","Female")
pay <- c(30000,40000,45000)
y_dataframe <- data.frame (id,sex,pay)
gender <- factor(c("男","男","女"))
paul.Family <- list(name="paul",wife="Iris",no.kids=3,kids.age=c(25,28,30),gender,y_dataframe)
paul.Family

paul.Family $ kids.age
paul.Family[4]              #會儲存欄位名稱
paul.Family[[4]]            #不會儲存欄位名稱
paul.Family[[4]][2]         #去欄位名稱才會顯示所要資料↓
paul.Family $ kids.age[2]   #顯示相同結果              ↑

#CH2 資料的讀取與寫入
getwd()
setwd("c:/")
getwd()

x <- read.table("x.csv" , sep=",",header = TRUE)
x
x$age
x[1,2]

x <- read.table("x.csv" , sep=",",header = FALSE)  #錯的
x

x <- read.csv("x.csv",header = TRUE)
x

x <- read.table("x.txt" , sep=" ",header = TRUE)   #錯的 sep=" "是斜線
x

x <- read.table("x.txt" , sep="\t",header = TRUE)#兩者一樣↓
x

x <- read.table("x.txt" ,header = TRUE)          #兩者一樣↑
x

x <- scan("")
x

my <- scan(file = "",what = list(name="",pay=integer(0),sex=""))
my

x <- scan("X1.csv", sep=",")
x

x <- scan("X1.csv", sep=",",what = list(id=integer(0),age=integer(0),pay=integer(0)))#195~196段的整理版
x


x <- scan("X1.txt")
x

write.table(x,"c:/x_faile.csv", row.names=FALSE,col.names=FALSE,sep=",")

x <- scan("X1.csv", sep=",",what = list(id=integer(0),age=integer(0),pay=integer(0)))
x

write.table(x,"c:/x_faile1.csv", row.names=FALSE,col.names=TRUE,sep=",")

data(iris)
iris
str(iris)
summary(iris)

save(iris,file="c:/iris.RData")
load("c:/iris.RData", .GlobalEnv)
iris


#第三章流程控制
a <- c(1,2,3)
x <- a+2
x

#()可以直接顯示指令結果
(x <- a+2)

#{}結合指令
{a <- c(1,2,3);x <- a+2}
x
({a <- c(1,2,3);x <- a+2})

#if else
x <- 6
if (x>5) y=2 else y=4
y

x <- 3
if(x<5) y=10
y

x <- 3
y <- 1
if(x<5 && y<5) {y <- 10; z <- 5}
y
z

ifelse (condition,a,b)

x <- 20
y=ifelse(x>5,2,3)
y

#switch
x <- 3
switch (x,5,sum(1:10),rnorm(5))

y <- "meat"
switch (y,juice="Apple",meat="pork")

#for
x <- 0
for(i in 1:5)x <- x+i
x

x <- 0
y <- 0
for (i in 1:5){x <- x+i;y <- i^2}
x
y
  
#while
sum <- 0
i <- 1
while(i<=10){sum <- sum+i;i <- i+1}
sum

#repeat
sum <- 0
i <- 1
repeat{
  sum <- sum+i
  i <-i +1
  if (i>10)break
}
sum

#%%=取餘數 %/%=取商
sum <- 0
for (i in 1:50){
  if(i%%2==0)next
  sum <- sum+i
}
sum

#apply
x <- array(1:24,dim=c(4,6))
x
apply(x,1,sum)   #列
apply(x,2,sum)   #欄、行

#自訂函數
myfun <- function(x) {y <- x+2;return(y)}
myfun(1)
myfun(100)

#<<-改變函數外面的值
x <- 1
myfun <- function(x) {x <- 2;print(x)}
myfun(x)
x
x <- 1
myfun <- function(x) {x <<- 2;print(x)} #少用
myfun(x)
x

#factorial階乘
factorial <- function(x=1){
  y <- 1
  for(i in 1:x) y <- y+i
  return(y)
}
factorial(5)
factorial(10)

#第四章
demo(graphics)
demo(image)

#高階繪圖
y <- sin(1:20)
plot(y,type="l",main="sin plot",xlab="X",ylab="Y")

#低階繪圖
title(sub="圖4-2")
points(5,0.5)

#互動式繪圖
plot(2,2)
pts <- locator(n=3)  #locator(n=3)→抓3個點
pts

x <- c(1,3,5)
y <- c(5,3,5)
plot(x,y)
identify(x,y,"My Labels")



