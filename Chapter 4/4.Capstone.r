### Capstone: The Cox model
# To conclude the course, let's take a look back at the lung cancer dataset we utilized briefly in these last 2 chapters. To recap, this dataset contains information on the survival of patients with advanced lung cancer from the North Central Cancer Treatment Group. The event is stored in the status variable, which has a value of 2 if an individual did not survive. The performance score (variable performance) measures how well a patient can perform usual daily activities (bad=0, good=100), rated by a physician. We want to know the association between specific performance scores and survival time.

### Instructions
# Create a Cox model that takes the survival time and event of death as a response and performance score as an extra term.
# Create a data frame of performance values 60, 70, 80, and 90, and use that to create survival curves.

# Compute Cox model and survival curves
cxmod <- coxph(Surv(time, status) ~ performance, data = lung)
new_lung <- data.frame(performance = c(60, 70, 80, 90))
cxsf <- survfit(cxmod, data = lung, newdata = new_lung, conf.type = "none")

# Use the summary of cxsf to take a vector of patient IDs
surv_cxmod0 <- surv_summary(cxsf)
pid <- as.character(surv_cxmod0$strata)

# Duplicate rows in newdat to fit with surv_cxmod0 and add them in
m_newdat <- new_lung[pid, , drop = FALSE]
surv_cxmod <- cbind(surv_cxmod0, m_newdat)

# Plot
ggsurvplot_df(surv_cxmod, color ="performance", legend.title = NULL, censor = FALSE)
