# You throw a party and at 1 a.m. guests suddenly start dancing. 
# You are curious to analyze how long your guests will dance for and start collecting data. 
# The problem is that you get tired and go to bed after a while.
# You obtain the following right censored dancing times data given in dancedat:
# name is the name of your friend.
# time is the right-censored dancing time.
# obs_end indicates if you observed the end of your friends dance (1) or if you went to sleep before they stopped dancing (0).
# You start analyzing the data in the morning, but you are tired and, 
# at first, ignore the fact that you have censored observations. Then you remember this course on DataCamp and do it correctly.

# The survival package is loaded for you in this exercise.

### INSTRUCTIONS
# Estimate the survival function pretending that all censored observations are actual observations.
# Estimate the survival function from this dataset via Kaplan-Meier.
# Plot the correct and wrong survival curves two using ggsurvplot_combine() and compare them. Notice how they differ.

# Create dancedat data
dancedat <- data.frame(
  name = c("Chris", "Martin", "Conny", "Desi", "Reni", "Phil", 
    "Flo", "Andrea", "Isaac", "Dayra", "Caspar"),
  time = c(20, 2, 14, 22, 3, 7, 4, 15, 25, 17, 12),
  obs_end = c(1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0))

# Estimate the survivor function pretending that all censored observations are actual observations.
km_wrong <- survfit(Surv(time) ~ 1, data = dancedat)

# Estimate the survivor function from this dataset via kaplan-meier.
km <- survfit(Surv(time, obs_end) ~ 1, data = dancedat)

# Plot the two and compare
ggsurvplot_combine(list(correct = km, wrong = km_wrong))


# Note:See how ignoring censoring underestimates your friends' dancing stamina? 
# The correct analysis (red curve) shows that your friends actually dance longer than the incorrect blue curve suggests.
