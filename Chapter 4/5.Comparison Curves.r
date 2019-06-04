### Capstone: Comparing survival curves

# We saw from the last exercise that performance scores do have an effect on the survival probability. 
# Now, let's take a look at the survival curve of all individuals using the Kaplan-Meier estimate 
# and compare it to the curve of a Cox model that takes performance into account. Note that for Cox models, 
# you can just enter the survfit() output into ggsurvplot() instead of creating the needed data frame yourself 
# and plugging it into ggsurvplot_df().

### INSTRUCTIONS
# Estimate the survival curve for lung cancer patients using the Kaplan-Meier method.
# Compute the Cox model curve for lung cancer patients that takes performance score into account.
# Estimate the survival curve for lung cancer patients using the Cox model.


### R Script
# Compute Kaplan-Meier curve
km <- survfit(Surv(time, status) ~ 1, data = lung)

# Compute Cox model
cxmod <- coxph(Surv(time, status) ~ performance, data = lung)

# Compute Cox model survival curves
new_lung <- data.frame(performance = c(60, 70, 80, 90))
cxsf <- survfit(cxmod, data = lung, newdata = new_lung, conf.type = "none")

# Plot Kaplan-Meier curve
ggsurvplot(km, conf.int = FALSE)

# Plot Cox model survival curves
ggsurvplot(cxsf, censor = FALSE)
