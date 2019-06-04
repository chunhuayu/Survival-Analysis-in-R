### Comparing Weibull model and Kaplan-Meier estimate
# Let's plot the survival curve we get from the Weibull model for the GBSG2 data!
# The survival and survminer packages and the GBSG2 data are loaded for you in this exercise.

### Instructions
# Compute the Weibull model for the GBSG2 data.
# Compute the survival curve from the model.
# Plot the survival curves you get from the two estimates.

# Weibull model
wb <- survreg(Surv(time, cens) ~ 1, GBSG2)

# Retrieve survival curve from model
surv <- seq(.99, .01, by = -.01)

# Get time for each probability
t <- predict(wb, type = 'quantile', p = 1-surv, newdata = data.frame(1))

# Create data frame with the information needed for ggsurvplot_df
surv_wb <- data.frame(time = t, surv = surv, 
  upper = NA, lower = NA, std.err = NA)

# Plot
ggsurvplot_df(fit = surv_wb, surv.geom = geom_line)
