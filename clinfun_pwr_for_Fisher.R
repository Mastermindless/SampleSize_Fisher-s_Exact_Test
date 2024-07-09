# Sample Size for Fisher’s Exact Test for Two Proportions

# Load necessary library
# Uncomment the following line to install the required package if not already installed
# install.packages("pwr")
library(pwr)

# Sample data
# Two pilot studies with the following positive and negative counts
# Pilot Study 1: 13 positive, 19 negative
# Pilot Study 2: 18 positive, 7 negative

# Creating a matrix for the counts
count_matrix <- matrix(c(13, 19, 18, 7), nrow = 2)

# Performing Fisher's Exact Test
fisher_result <- fisher.test(count_matrix)

# Printing the result of Fisher's Exact Test
print(fisher_result)

# Calculating effect size based on pilot study proportions
# Pilot Study 1: 13 positive out of 32 (13/32)
# Pilot Study 2: 18 positive out of 25 (18/25)

# Creating ratios
p1 <- 13 / 32
p2 <- 18 / 25
effect_size <- ES.h(p1, p2)
print(effect_size)

# Power analysis to find the required sample size for each group
# We use power = 0.8 and significance level = 0.05
power_analysis <- pwr.2p.test(h = effect_size, 
                              sig.level = 0.05, 
                              power = 0.8,
                              alternative = "two.sided")



# Printing the result of the power analysis
print(power_analysis)
writeLines(capture.output(power_analysis), "power_analysis.txt")




# Calculates sample size, effect size and power based on Fisher’s exact test
#install.packages("clinfun")
library(clinfun)

?fe.ssize()
Fisher_SampleSize <- fe.ssize(p1, p2, alpha=0.05, power=0.8, r=1, npm=6, mmax=100)
Fisher_SampleSize
writeLines(capture.output(Fisher_SampleSize), "Fisher_SampleSize.txt")

# Output session information
sessionInfo()
writeLines(capture.output(sessionInfo()), "full_sessionInfo.txt")

