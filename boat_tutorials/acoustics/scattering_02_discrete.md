(acoustics-scattering_discrete)=
## Discrete scatterers



(acoustics-scattering_discrete_why)=
### What are discrete scatterers and why they matter

We call something a "discrete" scatterer when we consider their scattering response by itself. It is extremely useful, because not only can we model individual _things_ in the ocean—a bubble, oil droplet, sand, fish, krill, whale, or even a submarine—as discrete scatterers, we can also model the combined scattering from a group of these things as a _collection_ of discrete scatterers. This allows us to build up models for more complex scenarios, like a patch of seafloor or sea surface, a cloud of bubbles or a school of fish, which we will explore in the [surface](acoustics-scattering_surface) and [volume](acoustics-scattering_volume) scattering sections.



(acoustics-scattering_discrete_why)=
### Point scatterer

The simplest discrete scatterer model is a "point" scatterer, which is very small and can be thought of as a new sound source that radiates sound after it is excited by the incident waves. This is nice, because we can immdiately apply many concepts we have learned about [acoustic sources](acoustics-source) here.

We often assume a point scatterer to be _omnidirectional_ in its scattering properties, meaning that when impinged by sound, it would scatter echoes equally in all directions. This means that regardless of the directions of the source and the receiver, the echo would always be the same.

For example, we can have an _omnidirectional_ point scatterer, which, when impinges by an incident sound, scatters echoes equally in all directions. This means that regardless of the directions of the source and the receiver, the echo would always be the same. Of course, in natural world, most objects scatter sound differently depending on the direction of the incident sound and the direction of the receiver. We can model them as _directional_ point scatterer, just like how we consider sources with different directional characteristics.




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
