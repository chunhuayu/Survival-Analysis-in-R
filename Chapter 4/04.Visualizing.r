### Visualizing a Cox model
# In this exercise we will reproduce the example from the video following the steps:
# Compute Cox model
# Decide on "imaginary patients"
# Compute survival curves
# Create data.frame with survival curve information
# Plot

# We will focus now on the last two steps in this exercise.

# The survival and survminer packages and the GBSG2 data are loaded for you in this exercise. The Cox model cxmod, the imaginary patient data newdat, and the survival curve information cxsf from the previous exercise are also available.

### INSTRUCTIONS
# Use the surv_summary() function to compute the data.frame we need for plotting the survival curves. Use cxsf (see pre-exercise code).
# Take a look at the object surv_cxmod0 using head() and inspect the different columns.
# Obtain a character vector of the strata which correspond to the letters in newdat.
# Create a data.frame that shows the patient characteristics corresponding to the rows in surv_cxmod0.
# Combine the patient info with surv_cxmod0 using cbind().
# Plot the survival curves estimated by the Cox model.
# linetype should correspond to hormonal therapy.
# color should correspond to tumor size.


# Compute data.frame needed for plotting
surv_cxmod0 <- surv_summary(cxsf)

# Get a character vector of patient letters (patient IDs)
pid <- as.character(surv_cxmod0$strata)

# Multiple of the rows in newdat so that it fits with surv_cxmod0
m_newdat <- newdat[pid, ]

# Add patient info to data.frame
surv_cxmod <- cbind(surv_cxmod0, m_newdat)

# Plot
ggsurvplot_df(surv_cxmod, linetype = 'horTh', color = 'tsize',
  legend.title = NULL, censor = FALSE)
