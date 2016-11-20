for (i in 1:18) {
	filename <- paste('C:/Users/31537/Documents/Python Scripts/real_estate/data/changsanjiao/regression_0/', as.character(i), '.csv', sep = '')
	reg_data <- read.csv(filename)


	fit_1 <- lm(t ~  t.p + t.1 + t.t0, data = reg_data)
	aic_1 <- AIC(fit_1)

	fit_2 <- lm(t ~  t.p + t.1 + p.1 + t.t0, data = reg_data)
	aic_2 <- AIC(fit_2)

	fit_3 <- lm(t ~  t.p + t.1 + p.1 + p.2 + t.t0, data = reg_data)
	aic_3 <- AIC(fit_3)

	fit_4 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + t.t0, data = reg_data)
	aic_4 <- AIC(fit_4)

	fit_5 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + p.4 + t.t0, data = reg_data)
	aic_5 <- AIC(fit_5)

	fit_6 <- lm(t ~  t.p + t.1 + t.2 + t.t0, data = reg_data)
	aic_6 <- AIC(fit_6)

	fit_7 <- lm(t ~  t.p + t.1 + t.2 + p.1 + t.t0, data = reg_data)
	aic_7 <- AIC(fit_7)

	fit_8 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + t.t0, data = reg_data)
	aic_8 <- AIC(fit_8)

	fit_9 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + t.t0, data = reg_data)
	aic_9 <- AIC(fit_9)

	fit_10 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + p.4 + t.t0, data = reg_data)
	aic_10 <- AIC(fit_10)

	fit_11 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.t0, data = reg_data)
	aic_11 <- AIC(fit_11)

	fit_12 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + t.t0, data = reg_data)
	aic_12 <- AIC(fit_12)

	fit_13 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + t.t0, data = reg_data)
	aic_13 <- AIC(fit_13)

	fit_14 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + t.t0, data = reg_data)
	aic_14 <- AIC(fit_14)

	fit_15 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + p.4 + t.t0, data = reg_data)
	aic_15 <- AIC(fit_15)

	fit_16 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + t.t0, data = reg_data)
	aic_16 <- AIC(fit_16)

	fit_17 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + t.t0, data = reg_data)
	aic_17 <- AIC(fit_17)

	fit_18 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + t.t0, data = reg_data)
	aic_18 <- AIC(fit_18)

	fit_19 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + t.t0, data = reg_data)
	aic_19 <- AIC(fit_19)

	fit_20 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + p.4 + t.t0, data = reg_data)
	aic_20 <- AIC(fit_20)

	fit_21 <- lm(t ~  t.p + p.1 + t.t0, data = reg_data)
	aic_21 <- AIC(fit_21)

	fit_22 <- lm(t ~  t.p + p.1 + p.2 + t.t0, data = reg_data)
	aic_22 <- AIC(fit_22)

	fit_23 <- lm(t ~  t.p + p.1 + p.2 + p.3 + t.t0, data = reg_data)
	aic_23 <- AIC(fit_23)

	fit_24 <- lm(t ~  t.p + p.1 + p.2 + p.3 + p.4 + t.t0, data = reg_data)
	aic_24 <- AIC(fit_24)

	fit_25 <- lm(t ~  t.p + t.1 + t0 + t.t0, data = reg_data)
	aic_25 <- AIC(fit_25)

	fit_26 <- lm(t ~  t.p + t.1 + p.1 + t0 + t.t0, data = reg_data)
	aic_26 <- AIC(fit_26)

	fit_27 <- lm(t ~  t.p + t.1 + p.1 + p.2 + t0 + t.t0, data = reg_data)
	aic_27 <- AIC(fit_27)

	fit_28 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + t0 + t.t0, data = reg_data)
	aic_28 <- AIC(fit_28)

	fit_29 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + p.4 + t0 + t.t0, data = reg_data)
	aic_29 <- AIC(fit_29)

	fit_30 <- lm(t ~  t.p + t.1 + t.2 + t0 + t.t0, data = reg_data)
	aic_30 <- AIC(fit_30)

	fit_31 <- lm(t ~  t.p + t.1 + t.2 + p.1 + t0 + t.t0, data = reg_data)
	aic_31 <- AIC(fit_31)

	fit_32 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + t0 + t.t0, data = reg_data)
	aic_32 <- AIC(fit_32)

	fit_33 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + t0 + t.t0, data = reg_data)
	aic_33 <- AIC(fit_33)

	fit_34 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + p.4 + t0 + t.t0, data = reg_data)
	aic_34 <- AIC(fit_34)

	fit_35 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t0 + t.t0, data = reg_data)
	aic_35 <- AIC(fit_35)

	fit_36 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + t0 + t.t0, data = reg_data)
	aic_36 <- AIC(fit_36)

	fit_37 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + t0 + t.t0, data = reg_data)
	aic_37 <- AIC(fit_37)

	fit_38 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + t0 + t.t0, data = reg_data)
	aic_38 <- AIC(fit_38)

	fit_39 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + p.4 + t0 + t.t0, data = reg_data)
	aic_39 <- AIC(fit_39)

	fit_40 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + t0 + t.t0, data = reg_data)
	aic_40 <- AIC(fit_40)

	fit_41 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + t0 + t.t0, data = reg_data)
	aic_41 <- AIC(fit_41)

	fit_42 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + t0 + t.t0, data = reg_data)
	aic_42 <- AIC(fit_42)

	fit_43 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + t0 + t.t0, data = reg_data)
	aic_43 <- AIC(fit_43)

	fit_44 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + p.4 + t0 + t.t0, data = reg_data)
	aic_44 <- AIC(fit_44)

	fit_45 <- lm(t ~  t.p + p.1 + t0 + t.t0, data = reg_data)
	aic_45 <- AIC(fit_45)

	fit_46 <- lm(t ~  t.p + p.1 + p.2 + t0 + t.t0, data = reg_data)
	aic_46 <- AIC(fit_46)

	fit_47 <- lm(t ~  t.p + p.1 + p.2 + p.3 + t0 + t.t0, data = reg_data)
	aic_47 <- AIC(fit_47)

	fit_48 <- lm(t ~  t.p + p.1 + p.2 + p.3 + p.4 + t0 + t.t0, data = reg_data)
	aic_48 <- AIC(fit_48)

	fit_49 <- lm(t ~  t.p + t.1 + t0 + t0.1 + t.t0, data = reg_data)
	aic_49 <- AIC(fit_49)

	fit_50 <- lm(t ~  t.p + t.1 + p.1 + t0 + t0.1 + t.t0, data = reg_data)
	aic_50 <- AIC(fit_50)

	fit_51 <- lm(t ~  t.p + t.1 + p.1 + p.2 + t0 + t0.1 + t.t0, data = reg_data)
	aic_51 <- AIC(fit_51)

	fit_52 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + t0 + t0.1 + t.t0, data = reg_data)
	aic_52 <- AIC(fit_52)

	fit_53 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t.t0, data = reg_data)
	aic_53 <- AIC(fit_53)

	fit_54 <- lm(t ~  t.p + t.1 + t.2 + t0 + t0.1 + t.t0, data = reg_data)
	aic_54 <- AIC(fit_54)

	fit_55 <- lm(t ~  t.p + t.1 + t.2 + p.1 + t0 + t0.1 + t.t0, data = reg_data)
	aic_55 <- AIC(fit_55)

	fit_56 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + t0 + t0.1 + t.t0, data = reg_data)
	aic_56 <- AIC(fit_56)

	fit_57 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + t0 + t0.1 + t.t0, data = reg_data)
	aic_57 <- AIC(fit_57)

	fit_58 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t.t0, data = reg_data)
	aic_58 <- AIC(fit_58)

	fit_59 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t0 + t0.1 + t.t0, data = reg_data)
	aic_59 <- AIC(fit_59)

	fit_60 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + t0 + t0.1 + t.t0, data = reg_data)
	aic_60 <- AIC(fit_60)

	fit_61 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + t0 + t0.1 + t.t0, data = reg_data)
	aic_61 <- AIC(fit_61)

	fit_62 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + t0 + t0.1 + t.t0, data = reg_data)
	aic_62 <- AIC(fit_62)

	fit_63 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t.t0, data = reg_data)
	aic_63 <- AIC(fit_63)

	fit_64 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + t0 + t0.1 + t.t0, data = reg_data)
	aic_64 <- AIC(fit_64)

	fit_65 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + t0 + t0.1 + t.t0, data = reg_data)
	aic_65 <- AIC(fit_65)

	fit_66 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + t0 + t0.1 + t.t0, data = reg_data)
	aic_66 <- AIC(fit_66)

	fit_67 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + t0 + t0.1 + t.t0, data = reg_data)
	aic_67 <- AIC(fit_67)

	fit_68 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t.t0, data = reg_data)
	aic_68 <- AIC(fit_68)

	fit_69 <- lm(t ~  t.p + p.1 + t0 + t0.1 + t.t0, data = reg_data)
	aic_69 <- AIC(fit_69)

	fit_70 <- lm(t ~  t.p + p.1 + p.2 + t0 + t0.1 + t.t0, data = reg_data)
	aic_70 <- AIC(fit_70)

	fit_71 <- lm(t ~  t.p + p.1 + p.2 + p.3 + t0 + t0.1 + t.t0, data = reg_data)
	aic_71 <- AIC(fit_71)

	fit_72 <- lm(t ~  t.p + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t.t0, data = reg_data)
	aic_72 <- AIC(fit_72)

	fit_73 <- lm(t ~  t.p + t.1 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_73 <- AIC(fit_73)

	fit_74 <- lm(t ~  t.p + t.1 + p.1 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_74 <- AIC(fit_74)

	fit_75 <- lm(t ~  t.p + t.1 + p.1 + p.2 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_75 <- AIC(fit_75)

	fit_76 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_76 <- AIC(fit_76)

	fit_77 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_77 <- AIC(fit_77)

	fit_78 <- lm(t ~  t.p + t.1 + t.2 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_78 <- AIC(fit_78)

	fit_79 <- lm(t ~  t.p + t.1 + t.2 + p.1 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_79 <- AIC(fit_79)

	fit_80 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_80 <- AIC(fit_80)

	fit_81 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_81 <- AIC(fit_81)

	fit_82 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_82 <- AIC(fit_82)

	fit_83 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_83 <- AIC(fit_83)

	fit_84 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_84 <- AIC(fit_84)

	fit_85 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_85 <- AIC(fit_85)

	fit_86 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_86 <- AIC(fit_86)

	fit_87 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_87 <- AIC(fit_87)

	fit_88 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_88 <- AIC(fit_88)

	fit_89 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_89 <- AIC(fit_89)

	fit_90 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_90 <- AIC(fit_90)

	fit_91 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_91 <- AIC(fit_91)

	fit_92 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_92 <- AIC(fit_92)

	fit_93 <- lm(t ~  t.p + p.1 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_93 <- AIC(fit_93)

	fit_94 <- lm(t ~  t.p + p.1 + p.2 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_94 <- AIC(fit_94)

	fit_95 <- lm(t ~  t.p + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_95 <- AIC(fit_95)

	fit_96 <- lm(t ~  t.p + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t.t0, data = reg_data)
	aic_96 <- AIC(fit_96)

	fit_97 <- lm(t ~  t.p + t.1 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_97 <- AIC(fit_97)

	fit_98 <- lm(t ~  t.p + t.1 + p.1 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_98 <- AIC(fit_98)

	fit_99 <- lm(t ~  t.p + t.1 + p.1 + p.2 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_99 <- AIC(fit_99)

	fit_100 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_100 <- AIC(fit_100)

	fit_101 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_101 <- AIC(fit_101)

	fit_102 <- lm(t ~  t.p + t.1 + t.2 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_102 <- AIC(fit_102)

	fit_103 <- lm(t ~  t.p + t.1 + t.2 + p.1 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_103 <- AIC(fit_103)

	fit_104 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_104 <- AIC(fit_104)

	fit_105 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_105 <- AIC(fit_105)

	fit_106 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_106 <- AIC(fit_106)

	fit_107 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_107 <- AIC(fit_107)

	fit_108 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_108 <- AIC(fit_108)

	fit_109 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_109 <- AIC(fit_109)

	fit_110 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_110 <- AIC(fit_110)

	fit_111 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_111 <- AIC(fit_111)

	fit_112 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_112 <- AIC(fit_112)

	fit_113 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_113 <- AIC(fit_113)

	fit_114 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_114 <- AIC(fit_114)

	fit_115 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_115 <- AIC(fit_115)

	fit_116 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_116 <- AIC(fit_116)

	fit_117 <- lm(t ~  t.p + p.1 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_117 <- AIC(fit_117)

	fit_118 <- lm(t ~  t.p + p.1 + p.2 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_118 <- AIC(fit_118)

	fit_119 <- lm(t ~  t.p + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_119 <- AIC(fit_119)

	fit_120 <- lm(t ~  t.p + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t0.3 + t.t0, data = reg_data)
	aic_120 <- AIC(fit_120)

	fit_121 <- lm(t ~  t.p + t.1 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_121 <- AIC(fit_121)

	fit_122 <- lm(t ~  t.p + t.1 + p.1 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_122 <- AIC(fit_122)

	fit_123 <- lm(t ~  t.p + t.1 + p.1 + p.2 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_123 <- AIC(fit_123)

	fit_124 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_124 <- AIC(fit_124)

	fit_125 <- lm(t ~  t.p + t.1 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_125 <- AIC(fit_125)

	fit_126 <- lm(t ~  t.p + t.1 + t.2 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_126 <- AIC(fit_126)

	fit_127 <- lm(t ~  t.p + t.1 + t.2 + p.1 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_127 <- AIC(fit_127)

	fit_128 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_128 <- AIC(fit_128)

	fit_129 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_129 <- AIC(fit_129)

	fit_130 <- lm(t ~  t.p + t.1 + t.2 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_130 <- AIC(fit_130)

	fit_131 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_131 <- AIC(fit_131)

	fit_132 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_132 <- AIC(fit_132)

	fit_133 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_133 <- AIC(fit_133)

	fit_134 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_134 <- AIC(fit_134)

	fit_135 <- lm(t ~  t.p + t.1 + t.2 + t.3 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_135 <- AIC(fit_135)

	fit_136 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_136 <- AIC(fit_136)

	fit_137 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_137 <- AIC(fit_137)

	fit_138 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_138 <- AIC(fit_138)

	fit_139 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_139 <- AIC(fit_139)

	fit_140 <- lm(t ~  t.p + t.1 + t.2 + t.3 + t.4 + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_140 <- AIC(fit_140)

	fit_141 <- lm(t ~  t.p + p.1 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_141 <- AIC(fit_141)

	fit_142 <- lm(t ~  t.p + p.1 + p.2 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_142 <- AIC(fit_142)

	fit_143 <- lm(t ~  t.p + p.1 + p.2 + p.3 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_143 <- AIC(fit_143)

	fit_144 <- lm(t ~  t.p + p.1 + p.2 + p.3 + p.4 + t0 + t0.1 + t0.2 + t0.3 + t0.4 + t.t0, data = reg_data)
	aic_144 <- AIC(fit_144)

	aic <- c(aic_1, aic_2, aic_3, aic_4, aic_5, aic_6, aic_7, aic_8, aic_9, aic_10,
		aic_11, aic_12, aic_13, aic_14, aic_15, aic_16, aic_17, aic_18, aic_19, aic_20,
		aic_21, aic_22, aic_23, aic_24, aic_25, aic_26, aic_27, aic_28, aic_29, aic_30,
		aic_31, aic_32, aic_33, aic_34, aic_35, aic_36, aic_37, aic_38, aic_39, aic_40,
		aic_41, aic_42, aic_43, aic_44, aic_45, aic_46, aic_47, aic_48, aic_49, aic_50,
		aic_51, aic_52, aic_53, aic_54, aic_55, aic_56, aic_57, aic_58, aic_59, aic_60,
		aic_61, aic_62, aic_63, aic_64, aic_65, aic_66, aic_67, aic_68, aic_69, aic_70,
		aic_71, aic_72, aic_73, aic_74, aic_75, aic_76, aic_77, aic_78, aic_79, aic_80,
		aic_81, aic_82, aic_83, aic_84, aic_85, aic_86, aic_87, aic_88, aic_89, aic_90,
		aic_91, aic_92, aic_93, aic_94, aic_95, aic_96, aic_97, aic_98, aic_99, aic_100,
		aic_101, aic_102, aic_103, aic_104, aic_105, aic_106, aic_107, aic_108, aic_109, aic_110,
		aic_111, aic_112, aic_113, aic_114, aic_115, aic_116, aic_117, aic_118, aic_119, aic_120,
		aic_121, aic_122, aic_123, aic_124, aic_125, aic_126, aic_127, aic_128, aic_129, aic_130,
		aic_131, aic_132, aic_133, aic_134, aic_135, aic_136, aic_137, aic_138, aic_139, aic_140,
		aic_141, aic_142, aic_143, aic_144
		)

	which.min(aic)

	series = c(series, which.min(aic))

	#series[i:18]

	tmp <- get(paste("fit_", which.min(aic), sep=""))

	resid <- as.data.frame(residuals(tmp))
	resid_name <- paste('resid_', i, sep='')
	colnames(resid) <- resid_name
	matrix_resid <- cbind(matrix_resid, resid)

	coe <- as.data.frame(coefficients(tmp))
	coe_name <- paste('coe_', i, sep='')
	colnames(coe) <- coe_name
	coe$names <- rownames(coe)
	matrix_coe <- merge(matrix_coe, coe, all = T)

	series
	colnames(matrix_resid)
	colnames(matrix_coe)
}

matrix_coe[is.na(matrix_coe)] = 0