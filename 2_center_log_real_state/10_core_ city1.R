i = 1

filename <- paste('C:/Users/Administrator/Documents/Python Scripts/real_estate -log - 2centre/data/changsanjiao/regression_0/', as.character(i), '.csv', sep = '')
data <- read.csv(filename)

# ����bestc selection����ģ��ɸѡ
library(leaps)
regfit.full=regsubsets(t~.,data=data,nvmax=16)    #�޸ı�����Ϊ16����Ĭ�ϸ���SSRѡ��
reg.summary=summary(regfit.full)
names(reg.summary)   #��������ö��б��ָ��

which.max(reg.summary$adjr2) 
coef(regfit.full,9)
which.min(reg.summary$cp)
coef(regfit.full,7)
which.min(reg.summary$bic)
coef(regfit.full,7)

# ѡȡ7��ģ����Ϊ����ģ��
#data.frame(coef(regfit.full,7))
# ����7��ģ��


# ������2�׵����
fit <- lm(t ~  t.p + t1.t0 + t.1 + t.2 + p.1 + p.2 +  t0 + t0.1 + t0.2, data = data)

# ��ȡ�в��ϵ��
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