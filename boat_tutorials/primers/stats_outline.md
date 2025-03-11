# Statistics

In our quest to understand the physical and biological processes within the ocean, we often observe the environment, form hypotheses, 
formulate experiments to collect observations and test the hypotheses. As we cannot sample the “whole” ocean, and the data recorded by our 
echosounders go through multiple stages in which information is lost and uncertainty is introduced, we have to account for these factors in 
our statistical analysis. In this primer we introduce/review fundamental statistical concepts paired with examples in ocean acoustics. We 
discuss topics such as probability distributions, confidence intervals, statistical testing, parameter estimation, and provide examples of 
their application to simulated and real datasets. The goal is for readers to understand the underlying assumptions and be capable to apply 
the methods to problems which do no follow a textbook definition. 
 

## Random Variables
  * Random experiment
  * Empirical distribution 
  * Empirical probability

## Probability Distributions in Acoustics 
  * Normal distribution
  * Poisson distribution
  * Exponentinal distribution 
  * Log-normal distribution
  * Raleigh distribution
  * Gaussian Mixture

## Exercise: Statistical Inference 
  * load a dataset
  * generate histogram
  * estimate the probability that X>x
  * introduce empirical cumulative distrbution (if we do it for any value)
  * visually inspect what popular distribution we could use to model the data
  * widget to select the parameters of a distribution to fit the data (plot of density function over data histogram)
  * reference to future chapter on maximum likelihood


## Parameter Estimation (high level)
  * Maximum Likelihood concept
  * Exercise: Fitting a distribution by modifying Parameters 
  

## Confidence Intervals
confidence_intervals.ipynb

  * Motivation and definition
    * Visual demonstration
    * Widget: effect of changing parameters
    * Discussion about error bars, standard errors
  * Bootstrap confidence intervals
    * Widget: effect of changing parameters
    * Exercise: Confidence interval for variance


## Testing

* Statistical Hypothesis: example with mean
* Statistical Test, P-value, Power
* Likelihood Ratio
* Example: Signal detection
* Non-parametric Tests

## Limit Theorems
`limit_theorems.ipynb`

* Motivation

* Law of Large Numbers
  * statement
  * example when it holds: exponential distribution
  * example when it does not hold: Cauchy distribution

* Central Limit Theorem
  * statement
  * example when it holds: exponential distribution
  * example when it does not hold: Cauchy distribution
