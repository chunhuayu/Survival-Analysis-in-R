### Introducing the GBSG2 dataset
# In this course, we will frequently use the GBSG2 dataset. 
# This dataset contains information on breast cancer patients and their survival. 
# In this exercise, we will take a first look at it in R.
# The TH.data package is loaded for you in this exercise.

### INSTRUCTIONS
# Read the help page of the GBSG2 dataset from the TH.data package.
# Load the GBSG2 dataset using the data() function.
# Look at the summary of the dataset.

### Check out the help page for this dataset
help(GBSG2, package = "TH.data")

### Load the data
data(GBSG2, package = "TH.data")

### Look at the summary of the dataset
summary(GBSG2)
