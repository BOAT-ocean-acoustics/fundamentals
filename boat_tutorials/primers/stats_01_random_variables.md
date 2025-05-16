(random-variables)=
# Random Variables

:::{tip} **Learning Objectives**
1. Outline the components of a statistical experiment.
2. Identify examples of each component within a scientific experiment.
:::

## Ocean Sound Levels Experiment

Suppose we want to study the ocean sound levels and would like to know if it is "louder" during a given period of time compared to an earlier time. For example, we may have different hypotheses:
* The ocean within the Puget Sound (a high ship traffic zone in the Pacific Northwest) is "louder" on a summer day, than on a winter day.
* The ocean is "louder" in more recent years than in previous years due to overall increase of ship traffic.
* The ocean is "louder" during a storm than on a calm day.
* The ocean is "louder" (at certain frequencies) when there are many orcas present. 

To answer the first question we can design an experiment to collect observations and test our hypothesis. We can plan to setup a hydrophone at a specific location, or identify existinging hydrophone datasets collected in the region. We want to know the sound level at a given place at a given time, however, before we measure it we do not know what exactly the outcome will be. We are performing a **random experiment**.  However, we know what the potential outcomes can be, i.e. the **sample space** of the experiment. In the case of the hydrophone, the sample space includes all dB values that the hydrophone can record (the range of the transmitted sounds can be different). This is an example of a **continuous random variable**. We can also observe **discrete random variables**, which can take a value from a (countable) set of a discrete values. For example, we can transform the hydrophone recording into a binary variable which indicates presence or absence of a marine mammal call within a time window. 


`````{admonition} Exercise
:class: tip
Outline a random experiment within your research area, identify the random variables observed, and their sample space.
`````


### Distributions and Histograms

If we observe a random variable only once, we do not know in advance what the outcome will be. However, if we repeat the experiment multiple times, or if we collect observations repeatedly under "similar" conditions, we may start to learn if certain values are more probable to occur than other ones. Each repetition of the random experiment is a **trial**. The outcomes of several trials represent an **event**, which is any subset of the sample space. 

For example, in the case of the discrete random variable: "presence of marine mammal call", we may observe that it is more likely to not observe a marine mammal call. If we collect observations over let's say one-minute windows, we may observe that 1% of the observations have a marine mammal call. We may suspect that the probability of observing a marine mammal is 0.01. Since in this case we have only two possible outcomes we can completely describe the empirical distribution of this random variable:

$$P(X=\textrm{marine mammal call}) = 0.01$$
$$P(X=\textrm{no marine mammal call}) = 0.99$$

:::{note}
Here we have made some assumptions to simplify the problem:

* we do not discuss the scenario if the call is on the boundary of the window, we assume to have some procedure that determines if there is a whale call is within the window
* the windows are during different periods of time, and it might be more probable to observe whales at specific times of the day/year. In this case, the trials are not independent. 
:::

Discrete distributions can be defined by specifying the probability of observing each discrete value. We will next discuss the continuous distribution "dB noise level over a window of time". The chance of observing exactly the same real value is almost zero (there will always be small fluctuations), however, certain ranges of values are more probable than others. For example, calm ocean could be around 60-70 dB, stormy ocean around 90 dB, large ship could be around 100 - 120 dB (at 100m distance) ([example sound levels](https://www.arc.id.au/SoundLevels.html)). So while we cannot say what is the probability of a specific value, we can describe the distribution by specifying the probability of a specific interval of values (i.e. the probability of certain events). We can describe the distribution empirically, by binning the observed values into small windows, and calculating the number of observations in each bin. This is equivalent to constructing the histogram of the observed sound levels, and if we keep the bin size small we will be able to approximate the probability of any other interval by adding the values of the bins which cover it.  










