(acoustics-target_strength)=
# Acoustic scattering

In this tutorial, we will look under the hood of the target strength (TS) term in the SONAR equation and examine foundational topics in acoustic scattering.


## Target strength
Intuitively, what is target strength (TS)? It is a measure of the amount of sound ("echo") energy bouncing off from an object (think: a fish), a surface (think: a patch of seafloor), or a volume of medium (think: a chunk of sandy sediment)--these are often called "target(s) of interest." We also very often use the term scattering strength (SS) to refer to the same quantiy, depending on the context.

This quantity is useful, because it characterizes the scatterer or scattering sources independently from all other components in the ocean acoustics "system" that we discussed back in the [](acoustics-intro) section. This allows us to focus on analyzing what happens when sound impinges on something without worrying about [how sound gets there](acoustics-propagtion) and [how it was generated initially](acoustics-source).

Just like what we discussed for RL, sonar echoes are typically a [time series](acoustics-receiver_time_series) and not a single point. Therefore, in analyzing sonar echoes, we often need to figure out _where_ target(s) of interest are in the time series, and use what we know about how different things scatter sounds differently to infer the sources of echoes.

Below, we will start with an introduction of common terminology and dive into various types of scattering sources!



```{Tip}
:class: tip
If you are not familiar with spectrum, check out the [Spectral analysis](acoustics-spectral) tutorial!
```





## Terminology

When it comes to studying acoustic scattering, there are many terms that could be confusing. We introduce some of them here.

### Monostatic vs bistatic
Monostratic or bistatic describe the spatial relationship between the sound transmitter, receiver, and the scatterer. 

"Monostatic" means that the transmitter and receiver are located at the same place (co-located). This is the scenario typically seen in fisheries echosounders or bottom profilers, for which the same or nearby set of transducers are used to both transmit the probing signals and receive the returning echoes. In a monostatic setup, the returning echo signals are often referred to as "backscatter," because they travel in the opposite direction (180$^\circ$ angle) from the transmitted sound.
<!-- MENTION REVERBERATION! -->

ADD PICTURE OF ECHOSOUNDER PINGING

"Bistatic" means that the transmitter and receiver are located separately at different places. This is typically seen in problems involving a much larger spatial context, such as when we are interested in measuring how sound interacts with the seafloor and sea surface before reaching a receiver very far away from the transmitter. As you can see, the direction of the scatterered signals does not have to be in a specific direction with respect to the transmitted sound.

ADD PICTURE OF ECHOSOUNDER PINGING

We want to note here, though, that in the physical world, sometimes it is not possible to use the same transducer to transmit sound and receive echoes. In these cases, researchers often put the transmitter and receiver as close as possible  side-by-side, to _approximate_ the monostatic setup. The quality of this approximation depends on the sound frequency and scatterer size, as we shall see below.

<!-- CONNECTION TO DEEPER TOPIC: FORGOT WHAT WE WERE THINKING... -->

### Differential scattering cross section







### Extinction cross section

In addition to scattering, absorption by the target(s) is another way energy can be removed from the incident sound. It is easier to think about it from the perspective of acoustic power $\Pi$ [unit: W, or Watt], which is the total acoustic energy transmitted or scattered (reflected) by a source or scatterer per unit time. 



We characterize the total amount of power removed by the **total extinction cross section** $\sigma_e$ by 

$\sigma_e = \sigma_s + \sigma_a $,

where $\sigma_s$ is the total scattering cross section and $\sigma_a$ is the total scattering cross section.

These quantities are called cross sections, because they have units



### Differential scattering cross section


- extinction cross section (total power removed from the incident sound):
    - total scattering cross section + total absorption cross section
- total scattering cross section
  - add intuitive example: shooting pellets to a sphere, what bounces away is related to the concept of "cross section"
  - explain carefully that this is a conceptual example and that is not all it is
- differential scattering cross section --> TS ([connect to decibel page]())


## Discrete scatterers
- what can we infer using these models?
    - fish/zooplankton abundance
    - density of suspended sediment ([deeper topic]())
    - ([connect to inference/estimation page]())
- point scatterer
- spheres of different material properties
    - show TS spectra of rigid, bubble, fluid, elastic ([deeper topic]()), this brings in frequency dependency ([connect to spectrum]())
    - solve rigid sphere and bubble? -- would that be too much materials?
    - **widget**: 1D bubble spectra
        - allow changing material properties (except for elastic), size, frequency range
    - talk about frequency dependency using the bubble example
- non-spherical scatterers
    - show TS spectra for fluid prolate spheroid, this brings in orientation dependency ([connect to SL/beampattern]())
    - **widget**: fluid prolate spheroid spectra over all angles
        - allow changing aspect ratio, size, frequency range
- practical examples:
    - fish school: assume no bio attenuation, no multiple scattering, no shadowing
    - echogram with fish vs zooplankton
    - acoustic color for info content in TS
    - sidescan (tie to propagation/TL section)
    - SAS


## Surface scattering
- what can we infer using these models?
    - seabed composition
    - surface roughness
- plane wave assumption
    - this is a revisit/quick mention ([connect to TL page]())
    - show angular and frequency dependency ([connect to spectrum/fourier analysis]())
- definition: scattering strength per unit area
- the same concept applies to sea surface scattering
- **widget**: seafloor scattering strength
    - allow changing roughness and grazing angle, frequency range
- examples:
    - perfect place to talk about sidescan: find object from noisy seafloor


## Volume scattering
- what can we infer using these models?
    - seabed composition
    - fish density in an aggregation
- connect back to discrete scatterers
    - mention multiple scattering and connect to transmission coefficients ([connect to TL page]())
- **widget**: seabed volume scattering strength
    - allow changing material properties, porosity, frequency range
- others:
    - turbulence ([deeper topic]())
    - micro structures ([deeper topic]())




## Related primer topics
- decibel
- fourier analysis / spectrum
- inference / estimation