### The UnempDur dataset
# The UnempDur dataset contains information on how long people stay unemployed. 
# In this case, the event (finding a job) is something positive. This information is stored in the censor1 variable, 
# which has a value of 1 if an individual was re-employed at a full-time job. 
# The spell variable indicates the length of time an individual was unemployed in number of two-week intervals.
# In this exercise, you'll explore these censored values and create a Surv object, 
# just as you did in the previous exercises with the GBSG2 dataset.

###INSTRUCTIONS
# Load the UnempDur dataset from the Ecdat package.
# Count the number of censored and uncensored observations.
# Create a barplot of the number of censored and uncensored observations.
# Create a Surv object using censor1 and the variable describing duration.

# Load the UnempDur data
data(UnempDur, package='Ecdat')

# Count censored and uncensored data
cens_employ_ft <- table(UnempDur$censor1)
cens_employ_ft

# Create barplot of censored and uncensored data
barplot(cens_employ_ft)

# Create Surv-Object
sobj <- Surv(UnempDur$spell, UnempDur$censor1)

# Look at 10 first elements
UnempDur[1:10,]
