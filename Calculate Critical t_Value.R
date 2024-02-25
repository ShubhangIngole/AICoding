#Example 1: Calculate Critical t-Value of One-Tailed t-Test

abs(qt(p = 0.05, df = 5))            # 95% confidence, 5 DF, one-sided


#Example 2: Calculate Critical t-Value of Two-Tailed t-Test

abs(qt(p = 0.05 / 2, df = 5))                              # 95% confidence, 5 DF, two-sided

#Example 3: Create Matrix of Critical t-Values

conf_levels <- c(0.0001, 0.001, 0.01, 0.05, 0.1)           # Vector of confidence levels

data_t <- round(data.frame(DF1 = abs(qt(p = conf_levels, df = 1)),DF2 = abs(qt(p = conf_levels, df = 2)),DF3 = abs(qt(p = conf_levels, df = 3)),DF4 = abs(qt(p = conf_levels, df = 4)),DF5 = abs(qt(p = conf_levels, df = 5)),DF10 = abs(qt(p = conf_levels, df = 10)),DF25 = abs(qt(p = conf_levels, df = 25)),DF50 = abs(qt(p = conf_levels, df = 50))), 2)
rownames(data_t) <- conf_levels
data_t                                                     # Print data frame