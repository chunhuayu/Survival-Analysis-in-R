### Digging into the GBSG2 dataset 1
# In the previous exercise, we learned about the GBSG2 dataset. 
# Let's dig a bit deeper into it to understand the variables we will use in the following.
# The cens variable contains values that indicate whether or not a person in the study has died. 
# In this exercise, you'll explore these censored values.

### INSTRUCTIONS
# Use the table() function to count the number of censored/uncensored observations.
# Use the barplot() function to plot the number of censored/uncensored observations.
# Read the help page of the GBSG2 dataset from TH.data.


# Count censored and uncensored data
num_cens <- table(GBSG2$cens)
num_cens

# Create barplot of censored and uncensored data
barplot(num_cens)

# Use help() to look at cens
help(GBSG2, package = "TH.data")
