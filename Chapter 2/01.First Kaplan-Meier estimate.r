# Surv() is used to define the time-to-event outcome, 
# survreg() can be used to estimate a Weibull model (see upcoming lessons), 
# survfit() you can estimate survival curves, e.g. with the Kaplan-Meier technique.
# We will take a look at the survfit() function and the object it generates. 
# The survival package is loaded for you in this exercise.

### INSTRUCTIONS

# Explore the use of the survfit() function by entering ?survfit in the console.
# Compute the Kaplan-Meier estimate using survfit().
# Take a look at the structure of the survfit object using str().
# Create a data.frame with the four time points, the corresponding number at risk (n.risk), number of observations 
#with an event (n.event), number of observations censored (n.censor) and the value of the survival curve (surv). 
# Take all info from the survfit object.# INSTRUCTIONS

# Create time and event data
time <- c(5, 6, 2, 4, 4)
event <- c(1, 0, 0, 1, 1)

# Compute Kaplan-Meier estimate
km <- survfit(Surv(time, event) ~ 1)
km

# Take a look at the structure
str(km)

# Create data.frame
data.frame(time = km$time, n.risk = km$n.risk, n.event =km$n.event,
  n.censor = km$n.censor, surv = km$surv)
