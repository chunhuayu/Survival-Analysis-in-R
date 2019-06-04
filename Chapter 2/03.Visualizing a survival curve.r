# Estimating and visualizing a survival curve
# Let's take a look at the survival of breast cancer patients.
# In this exercise, we work with the GBSG2 dataset again.
# The survival and survminer packages and the GBSG2 data are loaded for you in this exercise.

### Instructions
# Estimate a survivor function for the breast cancer patients.
# Visualize the estimated survival function using the function ggsurvplot().
# Add a risk table to the plot showing the number of patients under observation. This can be done using the risk.table argument.
# Add a line showing the median survival time to the plot. This can be done using the surv.median.line argument.

# Kaplan-Meier estimate
km <- survfit(Surv(time, cens) ~ 1, data = GBSG2)

# plot of the Kaplan-Meier estimate
ggsurvplot(km)

# add the risk table to plot
ggsurvplot(km, risk.table = TRUE)

# add a line showing the median survival time
ggsurvplot(km, risk.table = TRUE, surv.median.line = "hv")
