### Interpreting coefficients
# We have a dataset of lung cancer patients. 
# In this exercise, we want to know if the sex of the patients is associated with their survival time.
# The survival package and the dataset are already loaded for you.

### Instructions 
# Use the survreg() function to estimate a Weibull model.

# Look at the data set
str(dat)

# Estimate a Weibull model
wbmod <- survreg(Surv(time, status) ~ sex, data = dat)
coef(wbmod)

# Note: positive coefficent indicates the longer survival time.
