### Computing the survival curve from a Cox model
# In this exercise, we will reproduce the example from the video following the steps:
# Compute Cox model
# Decide on "imaginary patients"
# Compute survival curves
# Create data.frame with survival curve information
# Plot
# We will focus now on the first three steps in this exercise and do the next two steps in the upcoming exercise.
# The survival and survminer packages and the GBSG2 data are loaded for you in this exercise.

### INSTRUCTIONS
# Compute the Cox model for the GBSG2 data with covariates horTh and tsize.
# Decide on "imaginary patients": the two levels of horTh and the 25%, 50%, and 75% quantile.
# Add rownames letters "a" - "f" to the imaginary patients data.frame.
# Compute the survival curves from the Cox model for the 6 "imaginary patients" we created (newdat) using survfit().
# The survival curve info is stored in cxsf$surv. Take a look at head(cxsf$surv).
# Look at the head() of the time points to see which time points head(cxsf$surv) corresponds to.
# In the upcoming exercise, we will use surv_summary() to extract the necessary information from the survfit object.
# Take a look at the help file ?surv_summary. Do you recognize the column names of the object returned by the function?
# Yes, we created a similar data.frame for plotting the Weibull model.

# Cox model
cxmod <- coxph(Surv(time, cens) ~ horTh + tsize, data = GBSG2)

# Imaginary patients
newdat <- expand.grid(
  horTh = levels(GBSG2$horTh),
  tsize = quantile(GBSG2$tsize, probs = c(0.25, 0.5, 0.75)))
rownames(newdat) <- letters[1:6]

# Compute survival curves
cxsf <- survfit(cxmod, data = GBSG2, newdata = newdat, conf.type = "none")

# Look at first 6 rows of cxsf$surv and time points
head(cxsf$surv)
head(cxsf$time)

# Exactly! With the function we create a data.frames with columns time, surv, strata, std.err, lower, upper, 
and others to plot the Weibull model using ggsurvplot_df().
