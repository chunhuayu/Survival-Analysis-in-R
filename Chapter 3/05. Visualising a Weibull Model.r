### Visualising a Weibull model
# In this exercise we will reproduce the example from the video following the steps:
# Compute Weibull model
# Decide on "imaginary patients"
# Compute survival curves
# Create data.frame with survival curve information
# Plot
# We will focus now on the last two steps.

# The survival, survminer, and reshape2 packages and the GBSG2 data are loaded for you in this exercise. 
# The Weibull model wbmod and the imaginary patient data newdat you already computed are also available.

### Instructions 1/4
# Use melt() to bring the data.frame to long format. Let's call the variable and value names "surv_id" and "time" respectively.
# Use surv_wbmod$surv_id to add the correct survival probabilities from surv to the data.frame.
# Plot the survival curves using the ggsurvplot_df() function. The linetype should correspond to the hormonal therapy and the 
# color to the tumor size.


# Use cbind() to combine the information in newdat with t
surv_wbmod_wide <- cbind(newdat, t)
  
# Use melt() to bring the data.frame to long format
surv_wbmod <- melt(surv_wbmod_wide, id.vars = c("horTh", "tsize"), variable.name = "surv_id", value.name = "time")

# Use surv_wbmod$surv_id to add the correct survival probabilities surv
surv_wbmod$surv <- surv[as.numeric(surv_wbmod$surv_id)]

# Add columns upper, lower, std.err, and strata to the data.frame
surv_wbmod[, c("upper", "lower", "std.err", "strata")] <- NA

# Plot the survival curves
ggsurvplot_df(surv_wbmod, surv.geom = geom_line,
  linetype = 'horTh', color = 'tsize', legend.title = NULL)
