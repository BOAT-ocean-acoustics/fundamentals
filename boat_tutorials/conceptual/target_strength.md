(conceptual-target_strength)=
# Acoustic scattering

In this tutorial, we will look under the hood of the target strength (TS) term in the SONAR equation and examine foundational topics in acoustic scattering.


## Target strength
Intuitively, what is target strength (TS)? It is a measure of the amount of sound ("echo") energy bouncing off from an object (think: a fish), a surface (think: a patch of seafloor), or a volume of medium (think: a chunk of sandy sediment)--these are often called "target(s) of interest." We also very often use the term scattering strength (SS) to refer to the same quantiy, depending on the context.

This quantity is useful, because it characterizes the scatterer or scattering sources independently from all other components in the ocean acoustics "system" that we discussed back in the [](conceptual-intro) section. This allows us to focus on analyzing what happens when sound impinges on something without worrying about [how sound gets there](conceptual-propagtion) and [how it was generated initially](conceptual-source).

Just like what we discussed for RL, sonar echoes are typically a [time series](conceptual-receiver_time_series) and not a single point. Therefore, in analyzing sonar echoes, we often need to figure out _where_ target(s) of interest are in the time series, and use what we know about how different things scatter sounds differently to infer the sources of echoes.

Below, we will start with an introduction of common terminology and dive into various types of scattering sources!



```{Tip}
:class: tip
If you are not familiar with spectrum, check out the [Spectral analysis](conceptual-spectral) tutorial!
```





## Setup and terminology



- monostatic vs bistatic ([deeper topic]())
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