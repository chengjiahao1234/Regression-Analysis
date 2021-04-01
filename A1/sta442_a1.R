# STA442 Assignment 1

library("Pmisc")

# Q1: Affairs
data('Affairs', package='AER')
Affairs$ever = Affairs$affair > 0
Affairs$religious = factor(Affairs$religiousness, levels = c(2, 1, 3, 4, 5), 
                           labels = c('no', 'anti', 'low', 'med', 'high'))
glmAffairs <- glm(ever ~ gender:children + age + yearsmarried + religious,
                   data=Affairs, family='binomial'(link='logit'))
knitr::kable(summary(glmAffairs)$coef, digits=3)

# Note:
# Q1: (1 page possible)
# y:1/0
# log(pi/(1-pi) = \beta_0 + \beta_1)
# if beta positive: positive influence

# Q2 Smoking: (2-3 page)
# variables, model, hypo
# 1. y:1/0; 2. y:1/0 => logistic
# rural/urban: e^0.207 => 1.22 => rural large
# race: white smoke more
