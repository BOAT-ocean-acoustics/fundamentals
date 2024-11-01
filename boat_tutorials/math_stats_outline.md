# Statistics

## Introduction to Random Variables, Distributions, and Sampling
`distributions.ipynb`

Learning Objectives:

* What is a random variable?


* Review of some popular distributions with summary of their properties and an example use case from ocean acoustics
  * Normal distribution
  * Poisson distribution
  * Exponentinal distribution 
  * Log-normal distribution
  * Raleigh distribution
  * Gaussian Mixture


* Empirical Distributions (move forward)
  * histogram
  * have a toy example
  * empirical cumulative distribution?

* Exercise: 
  * load some data
  * generate histogram
  * estimate the probability that X>x
  * introduce empirical cumulative distrbution (if we do it for any value)
  * visually inspect what popular distribution we could use to model the data
  * widget to select the parameters of a distribution to fit the data (plot of density function over data histogram)
  * reference to future chapter on maximum likelihood


  # Parameter Estimation (high level)
  * explain the concept for maximum likelihood: best fit, do it numerically
  * 



## Confidence Intervals
confidence_intervals.ipynb

Learning Objectives:

* motivation: example about the mean
* statement
* visual demonstration
* widget to see performance as we change parameters
* discussion about error bars, standard errors (define those)
* bootstrap confidence Intervals
* widget to demonstrate performance as we change parameters



## Limit Theorems
`limit_theorems.ipynb`



Learning Objectives:

* Motivation

* Law of Large Numbers
  * statement
  * example when it holds: exponential distribution
  * example when it does not hold: Cauchy distribution

* Central Limit Theorem
  * statement
  * example when it holds: exponential distribution
  * example when it does not hold: Cauchy distribution


## Testing
* Statistical Hypothesis: example with mean
* Statistical Test, P-value, power
* Likelihood Ratio?
* Example signal detection

# Signal Processing

## Spectral Analysis
* cross-correlation, Fourier transform, and matched filter (padding in Python)
* chirp? (use matched filter to compress the chirp, resolving arriving time)
* Fourier Transform
* Power Spectral Density
* Spectrogram
    * Widget changing window size and frequency
    * Discussing different frequency bands
    * decibel, log domain, normalize


More references 
    

## Sampling and Quantization

## Decibel


