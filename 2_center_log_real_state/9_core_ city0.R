i = 0

filename <- paste('C:/Users/Administrator/Documents/Python Scripts/real_estate -log - 2centre/data/changsanjiao/regression_0/', as.character(i), '.csv', sep = '')
data <- read.csv(filename)

err_matrix <- matrix(nr=5, nc=35)

# 运用bestc selection先做一个初步的阶数判定
library(leaps)
regfit.full=regsubsets(t~.,data=data,nvmax=16)    #修改变量数为16个，默认根据SSR选择
reg.summary=summary(regfit.full)
names(reg.summary)   #会输出来好多判别的指标

which.max(reg.summary$adjr2) 
coef(regfit.full,4)
which.min(reg.summary$cp)
coef(regfit.full,3)
which.min(reg.summary$bic)
coef(regfit.full,1)
# 以上结果支持都在1阶滞后以内

# 做全回归，根据系数显著性，也可以定阶为1阶

###所以，滚动预测法筛选模型考虑的最高次数为2阶
for (j in 5:1) {
  reg_data = data[(j+1):(j+60),]
  
  fit_1 <- lm(t ~  t.p + t0.t1 + t.1, data = reg_data)
  aic_1 <- AIC(fit_1)
  
  fit_2 <- lm(t ~  t.p + t0.t1 + t.1 + p.1, data = reg_data)
  aic_2 <- AIC(fit_2)
  
  fit_3 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + p.2, data = reg_data)
  aic_3 <- AIC(fit_3)
  
  fit_4 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 , data = reg_data)
  aic_4 <- AIC(fit_4)
  
  fit_5 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1, data = reg_data)
  aic_5 <- AIC(fit_5)
  
  fit_6 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + p.2, data = reg_data)
  aic_6 <- AIC(fit_6)
  
  fit_7 <- lm(t ~  t.p + t0.t1 + p.1, data = reg_data)
  aic_7 <- AIC(fit_7)
  
  fit_8 <- lm(t ~  t.p + t0.t1 + p.1 + p.2, data = reg_data)
  aic_8 <- AIC(fit_8)
  
  fit_9 <- lm(t ~  t.p + t0.t1 + t.1 + t1.1, data = reg_data)
  aic_9 <- AIC(fit_9)
  
  fit_10 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + t1.1, data = reg_data)
  aic_10 <- AIC(fit_10)
  
  fit_11 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + p.2 +t1.1, data = reg_data)
  aic_11 <- AIC(fit_11)
  
  fit_12 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + t1.1, data = reg_data)
  aic_12 <- AIC(fit_12)
  
  fit_13 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + t1.1, data = reg_data)
  aic_13 <- AIC(fit_13)
  
  fit_14 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + p.2 + t1.1, data = reg_data)
  aic_14 <- AIC(fit_14)
  
  fit_15 <- lm(t ~  t.p + t0.t1 + t1.1, data = reg_data)
  aic_15 <- AIC(fit_15)
  
  fit_16 <- lm(t ~  t.p + t0.t1 + p.1 + t1.1, data = reg_data)
  aic_16 <- AIC(fit_16)
  
  fit_17 <- lm(t ~  t.p + t0.t1 + p.1 + p.2 + t1.1, data = reg_data)
  aic_17 <- AIC(fit_17)
  
  fit_18 <- lm(t ~  t.p + t0.t1 + t.1 + t1.1 + t1.2, data = reg_data)
  aic_18 <- AIC(fit_18)
  
  fit_19 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + t1.1 + t1.2, data = reg_data)
  aic_19 <- AIC(fit_19)
  
  fit_20 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + p.2 + t1.1+ t1.2, data = reg_data)
  aic_20 <- AIC(fit_20)
  
  fit_21 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 +t1.1 + t1.2, data = reg_data)
  aic_21 <- AIC(fit_21)
  
  fit_22 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + t1.1 + t1.2 , data = reg_data)
  aic_22 <- AIC(fit_22)
  
  fit_23 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + p.2 + t1.1 + t1.2, data = reg_data)
  aic_23 <- AIC(fit_23)
  
  fit_24 <- lm(t ~  t.p + t0.t1 + t1.1 + t1.2,data = reg_data)
  fit_25 <- lm(t ~  t.p + t0.t1 + p.1 + t1.1 + t1.2,data = reg_data)
               
  fit_26 <- lm(t ~  t.p + t0.t1 + p.1 + p.2 + t1.1 + t1.2, data = reg_data)   
               
  fit_27 <- lm(t ~  t.p + t0.t1 + t.1 + t1,data = reg_data)
               
  fit_28 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + t1,data = reg_data)
               
  fit_29 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + p.2 + t1,data = reg_data)      
               
  fit_30 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + t1,data = reg_data)

  fit_31 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + t1,data = reg_data)

  fit_32 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 +p.2 + t1,data = reg_data)
  fit_33 <- lm(t ~  t.p + t0.t1 + t1,data = reg_data)
  fit_34 <- lm(t ~  t.p + t0.t1 + p.1 + t1,data = reg_data)
  fit_35 <- lm(t ~  t.p + t0.t1 +p.1 + p.2 + t1 ,data = reg_data)

 
  err_vector <- c()
  
  for (h in 1:35) {		
    tmp <- get(paste("fit_", h, sep=""))
    tmp_err <- (predict(tmp, data[j + 59 + 1,]) - data[j + 59 + 1,1]) ** 2   # 求MSE
    err_vector <- c(err_vector, tmp_err)
  }
  
  err_matrix[j,] <- err_vector
}


# 选出最小的MSE
which.min(colSums(err_matrix))

series = c(which.min(colSums(err_matrix)))   # 运用MSE最小选出了是哪个模型


# 接下来应该用所有数据运行该模型，以计算回归系数和残差
reg_data <- read.csv(filename)

  fit_1 <- lm(t ~  t.p + t0.t1 + t.1, data = reg_data)
  aic_1 <- AIC(fit_1)
  
  fit_2 <- lm(t ~  t.p + t0.t1 + t.1 + p.1, data = reg_data)
  aic_2 <- AIC(fit_2)
  
  fit_3 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + p.2, data = reg_data)
  aic_3 <- AIC(fit_3)
  
  fit_4 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 , data = reg_data)
  aic_4 <- AIC(fit_4)
  
  fit_5 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1, data = reg_data)
  aic_5 <- AIC(fit_5)
  
  fit_6 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + p.2, data = reg_data)
  aic_6 <- AIC(fit_6)
  
  fit_7 <- lm(t ~  t.p + t0.t1 + p.1, data = reg_data)
  aic_7 <- AIC(fit_7)
  
  fit_8 <- lm(t ~  t.p + t0.t1 + p.1 + p.2, data = reg_data)
  aic_8 <- AIC(fit_8)
  
  fit_9 <- lm(t ~  t.p + t0.t1 + t.1 + t1.1, data = reg_data)
  aic_9 <- AIC(fit_9)
  
  fit_10 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + t1.1, data = reg_data)
  aic_10 <- AIC(fit_10)
  
  fit_11 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + p.2 +t1.1, data = reg_data)
  aic_11 <- AIC(fit_11)
  
  fit_12 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + t1.1, data = reg_data)
  aic_12 <- AIC(fit_12)
  
  fit_13 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + t1.1, data = reg_data)
  aic_13 <- AIC(fit_13)
  
  fit_14 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + p.2 + t1.1, data = reg_data)
  aic_14 <- AIC(fit_14)
  
  fit_15 <- lm(t ~  t.p + t0.t1 + t1.1, data = reg_data)
  aic_15 <- AIC(fit_15)
  
  fit_16 <- lm(t ~  t.p + t0.t1 + p.1 + t1.1, data = reg_data)
  aic_16 <- AIC(fit_16)
  
  fit_17 <- lm(t ~  t.p + t0.t1 + p.1 + p.2 + t1.1, data = reg_data)
  aic_17 <- AIC(fit_17)
  
  fit_18 <- lm(t ~  t.p + t0.t1 + t.1 + t1.1 + t1.2, data = reg_data)
  aic_18 <- AIC(fit_18)
  
  fit_19 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + t1.1 + t1.2, data = reg_data)
  aic_19 <- AIC(fit_19)
  
  fit_20 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + p.2 + t1.1+ t1.2, data = reg_data)
  aic_20 <- AIC(fit_20)
  
  fit_21 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 +t1.1 + t1.2, data = reg_data)
  aic_21 <- AIC(fit_21)
  
  fit_22 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + t1.1 + t1.2 , data = reg_data)
  aic_22 <- AIC(fit_22)
  
  fit_23 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + p.2 + t1.1 + t1.2, data = reg_data)
  aic_23 <- AIC(fit_23)
  
  fit_24 <- lm(t ~  t.p + t0.t1 + t1.1 + t1.2,data = reg_data)
  fit_25 <- lm(t ~  t.p + t0.t1 + p.1 + t1.1 + t1.2,data = reg_data)
  
  fit_26 <- lm(t ~  t.p + t0.t1 + p.1 + p.2 + t1.1 + t1.2, data = reg_data)   
  
  fit_27 <- lm(t ~  t.p + t0.t1 + t.1 + t1,data = reg_data)
  
  fit_28 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + t1,data = reg_data)
  
  fit_29 <- lm(t ~  t.p + t0.t1 + t.1 + p.1 + p.2 + t1,data = reg_data)      
  
  fit_30 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + t1,data = reg_data)
  
  fit_31 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 + t1,data = reg_data)
  
  fit_32 <- lm(t ~  t.p + t0.t1 + t.1 + t.2 + p.1 +p.2 + t1,data = reg_data)
  fit_33 <- lm(t ~  t.p + t0.t1 + t1,data = reg_data)
  fit_34 <- lm(t ~  t.p + t0.t1 + p.1 + t1,data = reg_data)
  fit_35 <- lm(t ~  t.p + t0.t1 +p.1 + p.2 + t1 ,data = reg_data)
  err_vector <- c()
  
# 以上得到了所有数据运行的模型，找出之前选出的最优的那个
tmp <- get(paste("fit_", which.min(colSums(err_matrix)), sep=""))

resid <- as.data.frame(residuals(tmp))
resid_name <- paste('resid_', i, sep='')
colnames(resid) <- resid_name
matrix_resid <- resid

coe <- as.data.frame(coefficients(tmp))
coe_name <- paste('coe_', i, sep='')
colnames(coe) <- coe_name
coe$names <- rownames(coe)
matrix_coe <- coe

series
colnames(matrix_resid)
colnames(matrix_coe)
