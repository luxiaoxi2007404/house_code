i = 0

filename <- paste('../data/changsanjiao/regression_0/', as.character(i), '.csv', sep = '')
data <- read.csv(filename)

err_matrix <- matrix(nr=10, nc=24)

for (j in 10:1) {
	reg_data = data[(j+1):(j+55),]

	fit_1 <- lm(t ~  t.p + t.1, data = reg_data)
	aic_1 <- AIC(fit_1)

	fit_2 <- lm(t ~  t.p + t.1 + p.1, data = reg_data)
	aic_2 <- AIC(fit_2)

	fit_3 <- lm(t ~  t.p + t.1 + p.1 + p.2, data = reg_data)
	aic_3 <- AIC(fit_3)

	fit_4 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3, data = reg_data)
	aic_4 <- AIC(fit_4)

	fit_5 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + p.4, data = reg_data)
	aic_5 <- AIC(fit_5)

	fit_6 <- lm(t ~  t.p + t.1 + t.2, data = reg_data)
	aic_6 <- AIC(fit_6)

	fit_7 <- lm(t ~  t.p + t.1 + t.2 + p.1, data = reg_data)
	aic_7 <- AIC(fit_7)

	fit_8 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2, data = reg_data)
	aic_8 <- AIC(fit_8)

	fit_9 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3, data = reg_data)
	aic_9 <- AIC(fit_9)

	fit_10 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + p.4, data = reg_data)
	aic_10 <- AIC(fit_10)

	fit_11 <- lm(t ~  t.p + t.1 + t.2 + t.3, data = reg_data)
	aic_11 <- AIC(fit_11)

	fit_12 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1, data = reg_data)
	aic_12 <- AIC(fit_12)

	fit_13 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2, data = reg_data)
	aic_13 <- AIC(fit_13)

	fit_14 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3, data = reg_data)
	aic_14 <- AIC(fit_14)

	fit_15 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + p.4, data = reg_data)
	aic_15 <- AIC(fit_15)

	fit_16 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4, data = reg_data)
	aic_16 <- AIC(fit_16)

	fit_17 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1, data = reg_data)
	aic_17 <- AIC(fit_17)

	fit_18 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2, data = reg_data)
	aic_18 <- AIC(fit_18)

	fit_19 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3, data = reg_data)
	aic_19 <- AIC(fit_19)

	fit_20 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + p.4, data = reg_data)
	aic_20 <- AIC(fit_20)

	fit_21 <- lm(t ~  t.p + p.1, data = reg_data)
	aic_21 <- AIC(fit_21)

	fit_22 <- lm(t ~  t.p + p.1 + p.2, data = reg_data)
	aic_22 <- AIC(fit_22)

	fit_23 <- lm(t ~  t.p + p.1 + p.2 + p.3, data = reg_data)
	aic_23 <- AIC(fit_23)

	fit_24 <- lm(t ~  t.p + p.1 + p.2 + p.3 + p.4, data = reg_data)
	aic_24 <- AIC(fit_24)

	err_vector <- c()

	for (h in 1:24) {		
		tmp <- get(paste("fit_", h, sep=""))
		tmp_err <- (predict(tmp, data[j,]) - data[j,1]) ** 2
		err_vector <- c(err_vector, tmp_err)
	}

	err_matrix[j,] <- err_vector
}


#aic <- c(aic_1, aic_2, aic_3, aic_4, aic_5, aic_6, aic_7, aic_8, aic_9, aic_10,
#	aic_11, aic_12, aic_13, aic_14, aic_15, aic_16, aic_17, aic_18, aic_19, aic_20,
#	aic_21, aic_22, aic_23, aic_24)

#which.min(aic)

#series = c(which.min(aic))

# err_matrix是一个10*24的矩阵
# 第j行第h列表示：第h个回归模型，预测第j时期的预测误差之平方
which.min(colSums(err_matrix))

series = c(which.min(colSums(err_matrix)))

# 用所有数据再做一次回归
reg_data <- read.csv(filename)

fit_1 <- lm(t ~  t.p + t.1, data = reg_data)
aic_1 <- AIC(fit_1)

fit_2 <- lm(t ~  t.p + t.1 + p.1, data = reg_data)
aic_2 <- AIC(fit_2)

fit_3 <- lm(t ~  t.p + t.1 + p.1 + p.2, data = reg_data)
aic_3 <- AIC(fit_3)

fit_4 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3, data = reg_data)
aic_4 <- AIC(fit_4)

fit_5 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + p.4, data = reg_data)
aic_5 <- AIC(fit_5)

fit_6 <- lm(t ~  t.p + t.1 + t.2, data = reg_data)
aic_6 <- AIC(fit_6)

fit_7 <- lm(t ~  t.p + t.1 + t.2 + p.1, data = reg_data)
aic_7 <- AIC(fit_7)

fit_8 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2, data = reg_data)
aic_8 <- AIC(fit_8)

fit_9 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3, data = reg_data)
aic_9 <- AIC(fit_9)

fit_10 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + p.4, data = reg_data)
aic_10 <- AIC(fit_10)

fit_11 <- lm(t ~  t.p + t.1 + t.2 + t.3, data = reg_data)
aic_11 <- AIC(fit_11)

fit_12 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1, data = reg_data)
aic_12 <- AIC(fit_12)

fit_13 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2, data = reg_data)
aic_13 <- AIC(fit_13)

fit_14 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3, data = reg_data)
aic_14 <- AIC(fit_14)

fit_15 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + p.4, data = reg_data)
aic_15 <- AIC(fit_15)

fit_16 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4, data = reg_data)
aic_16 <- AIC(fit_16)

fit_17 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1, data = reg_data)
aic_17 <- AIC(fit_17)

fit_18 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2, data = reg_data)
aic_18 <- AIC(fit_18)

fit_19 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3, data = reg_data)
aic_19 <- AIC(fit_19)

fit_20 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + p.4, data = reg_data)
aic_20 <- AIC(fit_20)

fit_21 <- lm(t ~  t.p + p.1, data = reg_data)
aic_21 <- AIC(fit_21)

fit_22 <- lm(t ~  t.p + p.1 + p.2, data = reg_data)
aic_22 <- AIC(fit_22)

fit_23 <- lm(t ~  t.p + p.1 + p.2 + p.3, data = reg_data)
aic_23 <- AIC(fit_23)

fit_24 <- lm(t ~  t.p + p.1 + p.2 + p.3 + p.4, data = reg_data)
aic_24 <- AIC(fit_24)

# 选取最优的回归模型
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