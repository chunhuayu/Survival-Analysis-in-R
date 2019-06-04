### Estimating the survival curve with survreg()
# We can now estimate the survival of the breast cancer patients in the GBSG2 data using a Weibull model.
# The Weibull distribution has two parameters, which determine the form of the survival curve.
# The survival package and the GBSG2 data are loaded for you in this exercise.

### Instructions
# Estimate a Weibull model for the breast cancer patients.
# Compute the estimated survival curve from the model using the predict() function with type = "quantile".
# Create a data.frame with the time points and correspoiding survival probabilities.
# Look at the first few lines of the result using the function head()

# Weibull model
wb <- survreg(Surv(time, cens) ~ 1, GBSG2)

# Retrieve survival curve from model probabilities 
surv <- seq(.99, .01, by = -.01)

# Get time for each probability
t <- predict(wb, type = 'quantile', p = 1-surv, newdata = data.frame(1))

# Create data frame with the information
surv_wb <- data.frame(time = t, surv = surv)

# Look at first few lines of the result
head(surv_wb)
