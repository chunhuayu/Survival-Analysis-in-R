# Chapter 4 The Cox Model

* In the last chapter, we learn how to compute and interpret Cox models to understand why they are useful 
* and how they differ from Weibull models.

## Cox Model
* The Cox model is also called proportional hazards model. What does that mean?
* The Cox model cannot deal with the situation where survival curves cross. This is also the case for the Weibull model.

## Difference
> Surv() is used to define the time-to-event outcome.  
> survreg() can be used to estimate a Weibull model.   
> survfit() you can estimate survival curves.

## Digest the Survival Analysis
* Why do we need to create a data.frame of "imaginary patients" when plotting survival models with covariates?
   * Because survival curves can only be plotted for given covariate combinations.
   * Correct! You can also use real patients, but you will have to tell the function which covariate combinations you want to look at. That is why we call them imaginary patients.
