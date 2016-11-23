library(urca)

#### 载入数据
price <- read.csv('C:/Users/Administrator/Documents/Python Scripts/real_estate -log - 2centre/data/changsanjiao/price_reverse_changsanjiao.csv')
price = t(price)
attach(price)

#### 单位根检验   原假设：？？？
df = matrix(data= NA,19,2)
CriticalValues = summary(dfi)@cval[1,]

for (i in (1:19)){
  dfi = paste('df',as.character(i),sep = '')
  dfi <- ur.df(y=price[,i],type='drift',selectlags = 'AIC')
  df[i,1] = summary(dfi)@teststat[1]
  dfi <- ur.df(y=diff(price[,i]),type='drift',selectlags = 'AIC')
  df[i,2] = summary(dfi)@teststat[1]
}
#结论：所有序列均不平稳，一阶差分以后均平稳，符合协整检验的条件

####协整检验【上海】原假设：最多有i个协整关系
cointegration = matrix(data= NA,19,2)
CriticalValues = summary(vecm)@cval

for (i in (2:19)){
y.mat = t(price[c(1,i),])
vecm = ca.jo(y.mat,type = 'trace',K = 2,ecdet = 'const')
cointegration[i,] = summary(vecm)@teststat
}

####协整检验【南京】
cointegration = matrix(data= NA,19,2)
CriticalValues = summary(vecm)@cval

for (i in (3:19)){
  y.mat = t(price[c(2,i),])
  vecm = ca.jo(y.mat,type = 'trace',K = 2,ecdet = 'const')
  cointegration[i,] = summary(vecm)@teststat
}

#### 协整方程
reg = lm(price[,1]~price[,2])
# 不足之处，没有LR统计量

#### 因果关系检验
library(lmtest)
cnames=paste("x",0:18,sep="")
colnames(price)=cnames
# 因果1 【用的这个！！！！！！！】
Granger0 = matrix(data= NA,19,1)
for (i in 2:19){
  y.mat = price[,c(1,i)]
  var.2c <- VAR(y.mat, p = 2, type = "const")
  Granger0[i,] = causality(var.2c, cause = "x0")$Granger$p.value
}

Granger1 = matrix(data= NA,19,1)
for (i in 3:19){
  y.mat = price[,c(2,i)]
  var.2c <- VAR(y.mat, p = 2, type = "const")
  Granger1[i,] = causality(var.2c, cause = "x1")$Granger$p.value
}

# 因果2   原假设：没有因果关系
for (i in 2:18){
  xi = price[,i]
  a = grangertest(x0 ~ xi, order =5, data = data.frame(price))
  print(a)
}


