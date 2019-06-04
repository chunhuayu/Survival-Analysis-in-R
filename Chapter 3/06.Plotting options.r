### Plotting options
### Why do we need the option surv.geom = geom_line when we plot the survival function estimated by a Weibull model?

ggsurvplot_df(surv_wbmod, surv.geom = geom_line,
  linetype = "horTh", color = "tsize", legend.title = NULL)

### Answer the question

# Possible Answers
# A: Because the Weibull model estimates a survival curve which looks like a step function.------Incorrect.

# B: Because the Weibull model estimates a smooth survival curve.------Correct.


# Option A: The Kaplan-Meier estimate is a step function.

# Option B: Correct! 
# geom_line will produce a smooth line correctly representing the survival curve estimate from the Weibull model 
# (the default surv.geom = geom_step shows a step function and is incorrect for Weibull models).
