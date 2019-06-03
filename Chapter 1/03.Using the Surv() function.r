### Using the Surv() function for GBSG2
# In the video, we learned about the Surv() function, which generates a Surv object. 
# Let's look a little deeper into what a Surv object actually is. We will use the GBSG2 data again.

### INSTRUCTIONS
# The survival package and GBSG2 data are loaded for you in this exercise.
# Create a Surv object with the two variables describing the duration and censoring information of the GBSG2 dataset.
# Look at the first 10 elements of the object (using indexing with squared brackets []).
# Look at the summary (summary()) and structure (str()) of the object.

# Create Surv-Object
sobj <- Surv(GBSG2$time, GBSG2$cens)

# Look at 10 first elements
sobj[1:10]

# Look at summary
summary(sobj)

# Look at structure
str(sobj)
