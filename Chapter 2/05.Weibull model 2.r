### Survival curve quantiles from a Weibull model
# We can now estimate the survival of the breast cancer patients in the GBSG2 data using a Weibull model.
# The predict() function with type = "quantile" allows us to compute the quantiles of the distribution function. 
# As we learned in this course so far, the survival function is 1 - the distribution function (S=1−D), 
# so we can easily compute the quantiles of the survival function using the predict() function.
# The survival package and GBSG2 data are loaded for you in this exercise.

### Instructions
# Estimate a Weibull model for the breast cancer patients.
# Get the time point at which the probability of surviving longer than that time point is 70 Percent 
# (using the predict() function with type = "quantile").

# R Script
# Weibull model
wb <- survreg(Surv(time, cens) ~ 1, data = GBSG2)

# 70 Percent of patients survive beyond time point...
predict(wb, type = 'quantile', p = 1-0.7, newdata = data.frame(1))
