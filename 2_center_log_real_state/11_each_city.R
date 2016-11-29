for (i in 0:18) {
	filename <- paste('C:/Users/Administrator/Documents/Python Scripts/real_estate -log - 2centre/data/changsanjiao/regression_0/', as.character(i), '.csv', sep = '')
	data <- read.csv(filename)

	# 运用bestc selection先做模型筛选
	library(leaps)
	regfit.full=regsubsets(t~.,data=data,nvmax=22)    #修改变量数为16个，默认根据SSR选择
	reg.summary=summary(regfit.full)
	names(reg.summary)   #会输出来好多判别的指标

	print(coef(regfit.full,which.min(reg.summary$bic)))
}

#从以上结果来看，模型的滞后期数均在1阶左右，故考虑的最高阶数为2阶
	
for (i in 2:18) {
  filename <- paste('C:/Users/Administrator/Documents/Python Scripts/real_estate -log - 2centre/data/changsanjiao/regression_0/', as.character(i), '.csv', sep = '')
  data <- read.csv(filename)
  fit <- lm(t ~  t.p + t.t0 + t.t1 + t.1 + t.2 +  p.1 + p.2 + t0 + t0.1 + t0.2 + t1 + t1.1 + t1.2, data = data)
  
  resid <- as.data.frame(residuals(fit))
  resid_name <- paste('resid_', i, sep='')
  colnames(resid) <- resid_name
  matrix_resid <- cbind(matrix_resid, resid)
  
  coe <- as.data.frame(coefficients(fit))
  coe_name <- paste('coe_', i, sep='')
  colnames(coe) <- coe_name
  coe$names <- rownames(coe)
  matrix_coe <- merge(matrix_coe, coe, all = T)
  
  series
  colnames(matrix_resid)
  colnames(matrix_coe)
}

matrix_coe[is.na(matrix_coe)] = 0
