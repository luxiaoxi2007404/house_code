i = 1

filename <- paste('C:/Users/Administrator/Documents/Python Scripts/real_estate -log - 2centre/data/changsanjiao/regression_0/', as.character(i), '.csv', sep = '')
data <- read.csv(filename)

# 运用bestc selection先做模型筛选
library(leaps)
regfit.full=regsubsets(t~.,data=data,nvmax=16)    #修改变量数为16个，默认根据SSR选择
reg.summary=summary(regfit.full)
names(reg.summary)   #会输出来好多判别的指标

which.max(reg.summary$adjr2) 
coef(regfit.full,9)
which.min(reg.summary$cp)
coef(regfit.full,7)
which.min(reg.summary$bic)
coef(regfit.full,7)

# 选取7号模型作为最终模型
#data.frame(coef(regfit.full,7))
# 运行7号模型


# 仅考虑2阶的情况
fit <- lm(t ~  t.p + t1.t0 + t.1 + t.2 + p.1 + p.2 +  t0 + t0.1 + t0.2, data = data)

# 提取残差和系数
resid <- as.data.frame(residuals(fit))
resid_name <- paste('resid_', i, sep='')
colnames(resid) <- resid_name
matrix_resid <- cbind(matrix_resid, resid)

coe <- as.data.frame(coefficients(fit))
coe_name <- paste('coe_', i, sep='')
colnames(coe) <- coe_name
coe$names <- rownames(coe)
matrix_coe <- merge(matrix_coe, coe, all = T)

series = 7
series
colnames(matrix_resid)
colnames(matrix_coe)
