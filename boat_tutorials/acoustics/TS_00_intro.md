(acoustics-scattering)=
# Acoustic scattering

In this tutorial, we will look under the hood of the target strength (TS) term in the SONAR equation and examine foundational topics in acoustic scattering.


## Target strength
What is target strength (TS)? It is a measure of the amount of sound ("echo") energy bouncing off from an object (think: a fish), a surface (think: a patch of seafloor), or a volume of medium (think: a chunk of sandy sediment)--these are often called "target of interest." We also very often use the term scattering strength (SS) to refer to the same quantiy, depending on the context.

This quantity is useful, because it characterizes the scatterer or scattering sources independently from all other components in the ocean acoustics "system" that we discussed back in the [](acoustics-intro) section. This allows us to focus on analyzing what happens when sound impinges on something without worrying about [how sound gets there](acoustics-propagtion) and [how it was generated initially](acoustics-source).

Just like what we discussed for RL, sonar echoes are typically a [time series](acoustics-receiver_time_series) and not a single point. Therefore, in analyzing sonar echoes, we often need to figure out _where_ the target(s) of interest are in the time series, and use what we know about the properties of sound scattered by different things to infer the sources of echoes.

Below, we will start with an introduction of the setup and some terminology, then dive into various types of scattering sources!



```{Tip}
:class: tip
If you are not familiar with spectrum, check out the [Spectral analysis](acoustics-spectral) tutorial!
```
