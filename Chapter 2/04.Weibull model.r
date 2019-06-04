### Estimating median survival from a Weibull model
# We can now estimate the survival of the breast cancer patients in the GBSG2 data using a Weibull model (function survreg()). 
# Remember, the Weibull model estimates a smooth survival function instead of a step function, 
# which is what the Kaplan-Meier method estimates.
# The predict() function with type = "quantile" allows us to compute the quantiles of the distribution function.
# We will use this to compute the median survival.
# The survival package and the GBSG2 data are loaded for you in this exercise.

### Instructions
# Estimate a Weibull model for the breast cancer patients.
# Compute the median survival from this model using the predict() function with type = "quantile".

# Weibull model
wb <- survreg(Surv(time, cens) ~ 1, data = GBSG2)

# Compute the median survival from the model
predict(wb, type = "quantile", p = 0.5, newdata = data.frame(1))
