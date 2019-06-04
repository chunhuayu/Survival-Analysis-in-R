### Computing a Weibull model and the survival curves
# In this exercise we will reproduce the example from the video using the following steps:
# Compute Weibull model
# Decide on "imaginary patients"
# Compute survival curves
# Create data.frame with survival curve information
# Plot

# In this exercise, we will focus on the first three steps. The next exercise will cover the remaining steps.
# The survival, survminer, and reshape2 packages and the GBSG2 data are loaded for you in this exercise.

### Instructions 1/2
# Compute the Weibull model for the GBSG2 data with covariates horTh and tsize.
# Decide on "imaginary patients": the two levels of horTh and the 25%, 50%, and 75% quantiles of tsize.
### Instructions 2/2
# Compute the survival curves from the Weibull model for the 6 "imaginary patients" we created (newdat).
# Compute the number of rows and columns the generated object has using dim().

### R Script
# Weibull model
wbmod <- survreg(Surv(time, cens) ~ horTh + tsize, data = GBSG2)

# Imaginary patients
newdat <- expand.grid(
  horTh = levels(GBSG2$horTh),
  tsize = quantile(GBSG2$tsize, probs = c(0.25, 0.5, 0.75)))

# Compute survival curves
surv <- seq(.99, .01, by = -.01)
t <- predict(wbmod, type = 'quantile', p = 1-surv,
  newdata = newdat)

# How many rows and columns does t have?
dim(t)


