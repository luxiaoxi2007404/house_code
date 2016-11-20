write.csv(matrix_resid, "../data/changsanjiao/regression_0/regression_resid_0.csv", row.names = F)
write.csv(matrix_coe, "../data/changsanjiao/regression_0/regression_coe_0.csv", row.names = F)

a <- read.csv("../data/changsanjiao/regression_0/regression_resid_0.csv")
b <- cov(a)
