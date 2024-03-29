### Compute Weibull model
# For a Weibull model with covariates, 
# we can compute the survival curve just as we did for the Weibull model without covariates. 
# The only thing we need to do is specify the covariate values for a given survival curve in the predict() function. 
# This can be done with the argument newdata.

### Instructions
# Compute a Weibull model for the GBSG2 dataset with covariate horTh to analyze the effect 
# of hormonal therapy on the survival of patients.
# Compute the survival curve for patients who receive hormonal therapy.
# Take a look at the survival curve with str().


# Weibull model
wbmod <- survreg(Surv(time, cens) ~ horTh, data = GBSG2)

# Retrieve survival curve from model
surv <- seq(.99, .01, by = -.01)
t_yes <- predict(wbmod, type = "quantile", p = 1-surv, newdata = data.frame( horTh= "yes"))

# Take a look at survival curve
str(t_yes)
