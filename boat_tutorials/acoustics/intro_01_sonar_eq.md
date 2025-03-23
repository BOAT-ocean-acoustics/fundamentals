(acoustics-intro_sonar_equation)=
## The mighty SONAR equation

The Sonar Equation provides a framework for understanding the different components involved in either **pure listening** or **active pinging (echolocation)** using sound. The term **SONAR** stands for **SO**und **N**avigation **A**nd **R**anging.

In pure listening scenarios, the sonar equation is written as:

(acoustics-intro_sonar_equation_passive)=
$$
RL = SL - TL
$$

and in the active sensing scenario, it is written as:

(acoustics-intro_sonar_equation_active)=
$$
RL = SL - 2TL + TS
$$

where:
- $RL$ is receive level, or the strength of the received sound
- $SL$ is source level, or the intensity of the emitted sound
- $TL$ is transmission loss, or the attenuation of sound as it travels
- $TS$ is target strength, or the acoustic reflectivity of the target

You may find variations of the sonar equation that include additional terms, such as noise level ($NL$), array gain ($AG$), or directivity index ($DI$), as seen on the [DOSITS](https://dosits.org/science/advanced-topics/sonar-equation/) website. These variations arise from the specific problem setup and the instrumentation used.


```{Note}
:class: note
The SONAR equation effectively breaks down the complex ocean acoustics "system" into multiple individual pieces that are each much more manageable, making it a lot easier to analyze and model first each component and ultimately the whole system.
```


In the following tutorials, we will use the SONAR equation as a guide to explore key components of an ocean acoustics problem (the "system"), including acoustic sources and receiver (both biological or human-made), sound propagation and scattering (due to biotic or abiotic factors), and applications of signal processing and statistical methods to real-world ocean acoustic data through both conceptual introductions and hands-on exercises.

But first, let's see how we can use the SONAR equation to help us break down the complex problem of studying the lives of orcas using sound.


```{Tip}
:class: tip
Through the tutorials, you will find that each term in the SONAR equation is much more than just a level (intensity) that you see here, but that the SONAR equation remains a useful tool to think about the big picture when you work on an ocean acoustics problem.
```
