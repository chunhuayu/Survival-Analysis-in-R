### Computing a Weibull and a log-normal model

# In this exercise, we want to compute a Weibull model and a log-normal model for the GBSG2 data. 
# You will see that the process of computing the survival curve is the same. 
# In the upcoming exercise, we will compare the results from the two models and see the differences.

# The survival, survminer, and reshape2 packages and the GBSG2 data are loaded for you in this exercise.

### INSTRUCTION
# Compute the Weibull model
# Compute the log-normal model
# The Weibull distribution is the the default for survreg(). 
# To compute a log-normal model you need to adjust the distribution argument.

# Compute the survival functions for both models:
# Define the new dataset as a data.frame with the two levels of hormonal Therapy.
# Use predict() to compute the survival functions.

# R Script
# Weibull model
wbmod <- survreg(Surv(time, cens) ~ horTh, data = GBSG2)

# Log-Normal model
lnmod <- survreg(Surv(time, cens) ~ horTh, data = GBSG2, dist = "lognormal")

# Newdata
newdat <- data.frame(horTh = levels(GBSG2$horTh))

# Surv
surv <- seq(.99, .01, by = -.01)

# Survival curve from Weibull model and log-normal model
wbt <- predict(wbmod, type = "quantile", p = 1-surv, newdata = newdat)
lnt <- predict(lnmod, type = 'quantile', p = 1-surv, newdata = newdat,dist=lognormal)
