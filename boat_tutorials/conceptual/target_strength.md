(conceptual-target_strength)=
# Acoustic scattering

In this tutorial, we will look under the hood of the target strength (TS) term in the SONAR equation and examine foundational topics in acoustic scattering.


## Target strength
Intuitively, what is target strength (TS)? It is a measure of the amount of sound energy bouncing off from an object, a surface, or a volume of medium. We often also use the term scattering strength (SS) to refer to the same quantiy, depending on the context.

This quantity is useful, because it characterizes the scatterer or scattering sources independently from all other components in the ocean acoustics "system" that we discussed back in the [](conceptual-intro) section. This allows us to focus on analyzing what happens when sound impinges on something without worrying about how sound gets here and how it was generated initially.



```{Tip}
:class: tip
To learn more about how sound generation and how sound travels in the ocean, check out the [Acoustic propagation](conceptual-propagtion) and [Sound generation](conceptual-source) tutorials.
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