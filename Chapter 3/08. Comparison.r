### Comparing Weibull and Log-Normal Model I
# In this exercise, we want to add the correct survival probabilities to a data frame. 
# This data frame will be used to plot the survival curves. 
# surv_wide is a wide data frame containing hormonal therapy information and 
# the survival curves for the Weibull and log-normal models.
# The survival, survminer, and reshape2 packages and the GBSG2 data are loaded for you in this exercise.

### INSTRUCTIONS
# Melt the data frame into long format.
# Use surv_wbmod$surv_id to add the correct survival probabilities surv to the data frame.

### R Script
# Melt the data.frame into long format.
surv_long <- melt(surv_wide, id.vars = c("horTh", "dist"), variable.name = "surv_id", value.name = "time")

# Add column for the survival probabilities
surv_long$surv <- surv[as.numeric(surv_long$surv_id)]

# Add columns upper, lower, std.err, and strata contianing NA values
surv_long[, c("upper", "lower", "std.err", "strata")] <- NA
