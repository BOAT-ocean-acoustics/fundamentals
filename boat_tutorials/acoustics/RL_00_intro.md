(acoustics-receiver)=
# Sound reception

In this tutorial, we will use the receive level (RL) term in the SONAR equation as a starting point to discuss foundational concepts in sound reception.

## Receive level
Receive level (RL) is what we typically measure when trying to listen to the ocean. This is intuitive, since when looking back at the [acoustic lives of the orcas](acoustics-intro_orca_and_sonar_equation), you see that:
- RL combines all effects from sound transmission (SL) and propagation through the environment (TL) when Ola is [_purely listening_](acoustics-intro_orca_comms):

    $RL = SL - TL$

- RL combines sound transmission, two-way propagation, and scattering (TS) when Ola is [_pinging and listening_]((acoustics-intro_orca_fish_echo)):

    $RL = SL - 2TL + TS$



With RL, we can often tell whether a sound source (such as another whale) is present against a much quieter background. However, since most sound recordings are a time series (a series of high and low voltage measurements) and not a single number, we need to know how to turn that into RL. In addition, there are other informative sound attributes other than the "level" (loudness), such as the temporal pattern and its frequency content. For example, the sound of wind, rain, cracking ice, and various animals are all different. We will dive deeper into these attributes in the [Spectral analysis](acoustics-spectral) tutorial and practice with real-world data during the hands-on exercise sections.

First, let's see how we can actually capture sound in the ocean!


<!-- 
THERE IS NO "TIME" IN THE SONAR EQUATION!
- however, note that there is no "time" in the sonar equation!
    - but notice that when we explained each term in previous sections, we often draw time series of the signal
    - what happens here is that we actually implicitly "gated" the time series to isolate a specific component of the sonar equation
-->
