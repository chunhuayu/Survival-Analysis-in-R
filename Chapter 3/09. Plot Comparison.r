### Comparing Weibull and LogNormal Model II

# In this exercise, we want to compare the survival curves estimated by a Weibull model 
# and by a log-normal model for the GBSG2 data. 
# This exercise shows how the estimates change if you use a different distribution.

# The survival, survminer, and reshape2 packages and the GBSG2 data are loaded for you in this exercise.

### INSTRUCTIONS
# Plot the survival curves using the ggsurvplot_df() function.
# The linetype should correspond to the hormonal therapy and the color to the distribution (dist).

### R Script
# Plot the survival curves
ggsurvplot_df(surv_long, surv.geom = geom_line,
              linetype = 'horTh', color = 'dist', legend.title = NULL)
