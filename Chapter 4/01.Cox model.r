### Computing a Cox model

# We have a dataset of lung cancer patients. 
# We want to know if their performance score (variable performance) is associated with their survival time. 
# The performance score measures how well a patient can perform usual daily activities (bad=0, good=100).

# The survival package and the dat dataset are already loaded for you.

### INSTRUCTIONS
# Compute a Cox model for the lung cancer data dat using coxph() to estimate the effect of the performance score 
# (variable performance) on the survival of lung cancer patients.
# Use the coef() function to show the model coefficient.

# Compute Cox model
cxmod <- coxph(Surv(time, status) ~ performance, data = dat)

# Show model coefficient
coef(cxmod)

# The performance coefficient is negative which means 
# that higher values of the performance score tend to go along with longer survival 
# (interpretation is contrary to the Weibull model).
