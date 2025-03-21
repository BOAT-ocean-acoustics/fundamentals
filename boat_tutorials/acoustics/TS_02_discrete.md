(acoustics-scattering_discrete)=
## Discrete scatterers



(acoustics-scattering_discrete_why)=
### What are discrete scatterers and why they matter

We call something a "discrete" scatterer when we consider their scattering response by itself. It is extremely useful, because not only can we model individual _things_ in the ocean—a bubble, oil droplet, sand, fish, krill, whale, or even a submarine—as discrete scatterers, we can also model the combined scattering from a group of these things as a _collection_ of discrete scatterers. This allows us to build up models for more complex scenarios, like a patch of seafloor or sea surface, a cloud of bubbles or a school of fish, which we will explore in the [surface](acoustics-scattering_surface) and [volume](acoustics-scattering_volume) scattering sections.

Furthermore, once we know how different types of objects scatterer sound, we can use that knowledge to interpret the echo signals we receive and infer the potential scattering sources. In cases when we already know or are very confident of what the scatterers are, we can even go one step further, to estimate scatterer properties, such as their size, shape, or material composition based on the spectral, temporal, or other features of the echoes.





(acoustics-scattering_discrete_why)=
### Point scatterer

The simplest discrete scatterer model is a "point" scatterer, which is very small and can be thought of as a new sound source that radiates sound after it is excited by the incident waves. This is nice, because we can immdiately apply many concepts we have learned about the [acoustic sources](acoustics-source) here.

We often assume a point scatterer to be _omnidirectional_, meaning that when impinged by sound, it would scatter echoes equally in all directions. This means that regardless of the directions of the source and the receiver, the echo would always be the same.

But of course, in the natural world, most objects scatter sounds differently depending on the direciton of the incident sound and its relative location with respective to the receiver. Therefore, we can model a _directional_ point scatterer, just like how we consider sources with different directional characteristics.





### Scattering of spheres

Spheres are nice first examples when studying scattering problems, because the spherical shape is a good approximation of many discrete scatterers in the ocean, and the symmetrical geometry allows us to focus on many fundamental properties related to scatterer size and material properties, before considering the potential complication of the exact scatterer shape.

As we have seen before in the [sound reception](REF) tutorial, when we talk about the _size_ of the scatterer, we are really talking about the _relative size_ of the scatterer compare to the acoustic wavelength. We often use a _dimensionless_ number, $ka$, to quantify this, where $k=2\pi/\lambda$ is the acoustic wavenumber, and $a$ is the characteristic dimension of the scatterer. $ka$ is a _dimensionless_ measure, because both $\lambda$ and $a$ are length measures






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
