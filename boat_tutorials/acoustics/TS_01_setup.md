(acoustics-scattering_setup)=
## Geometry and terminology

When it comes to studying acoustic scattering, there are many terms that could be confusing. Read on to learn more about them!


(acoustics-scattering_monostatic_bistatic)=
### Monostatic vs bistatic
The terms "monostatic" or "bistatic" describe the spatial relationship between the sound transmitter, receiver, and the scatterer. 


```{image} ../images/monostatic_bistatic.png
:width: 600px
:align: center
```

"Monostatic" means that the transmitter and receiver are located at the same place (co-located). This is the scenario typically seen in fisheries echosounders or bottom profilers, for which the same or nearby set of transducers are used to both transmit the probing signals and receive the returning echoes. In a monostatic setup, the returning echo signals are often referred to as "backscatter," because they travel in the opposite direction (180$^\circ$ angle) from the transmitted sound.
<!-- MENTION REVERBERATION! -->

<!-- ADD PICTURE OF ECHOSOUNDER PINGING -->

"Bistatic" means that the transmitter and receiver are located separately at different places. This is typically seen in problems involving a much larger spatial context, such as when we are interested in measuring how sound interacts with the seafloor and sea surface before reaching a receiver very far away from the transmitter. As you can see, the direction of the scatterered signals does not have to be in a specific direction with respect to the transmitted sound.

<!-- ADD PICTURE OF BISTATIC SETUP -->

We want to note here, though, that in the physical world, sometimes it is not possible to use the same transducer to transmit sound and receive echoes. In these cases, researchers often put the transmitter and receiver as close as possible  side-by-side, to _approximate_ the monostatic setup. The quality of this approximation depends on the sound frequency and scatterer size, as we shall see below.

<!-- CONNECTION TO DEEPER TOPIC: FORGOT WHAT WE WERE THINKING... -->





(acoustics-scattering_differential_scattering_cross_section)=
### Differential scattering cross section
A useful concept when thinking about how something scatters sound is the differential scattering cross section $\sigma = \sigma(\theta_i, \phi_i, \theta_s, \phi_s, f)$, which is a function of the sound frequency $f$, and the angles of the incident and scattering sound, ($\theta_i, \phi_i$) and ($\theta_s, \phi_s$), respectively. 

ADD FIGURE


```{Tip}
:class: tip
Here, we define angles using the [spherical coordinate](https://en.wikipedia.org/wiki/Spherical_coordinate_system) because it is convenient to consider the problem centered at the scatterer.
```


In many practical cases, we assume that a scatter that is very far from the sound source and  receiver. This allows us to approximate the source, receiver, and scatterer all "point," and both the incident and scattered sounds are plane waves (just like [when we talked about sound reception](acoustics-receiver_plane_wave_approx)) when impinging on the scatterer or when arriving at the receiver, respectively.

This is a powerful assumption, because this allows us to focus our analysis on the target scattering properties and isolate this component from the rest of the [_system_](acoustics-intro) we discussed in the beginning. From here, you can see how the different terms in the [active sonar equation](acoustics-intro_sonar_equation_active) fall into place.

And as you may have already guessed: target strength is indeed related to the differential scattering cross section!

In the general bistatic case:

$$
TS(\theta_i, \phi_i, \theta_s, \phi_s, f) = 10 \log_{10} \frac{ \sigma(\theta_i, \phi_i, \theta_s, \phi_s, f) }{ 1 \textrm{m}^2 }
$$

whereas in the monostatic case, we can define the differential _backscattering_ cross section $\sigma_{bs}$ based on only the incident direction, as it also specifies the receiver direction:

$$
TS(\theta_i, \phi_i, f) = 10 \log_{10} \frac{ \sigma_{bs}(\theta_i, \phi_i, f) }{ 1 \textrm{m}^2 }
$$

Here, the $1 \textrm{m}^2$ term in the denominators above is the _reference unit_ when expressing quantities in decibels, as we have learned before in the [decibel primer](primer-decibel).





(acoustics-scattering_total_cross_sections)=
### Total cross sections
How do we intuitively understand the unit of the differential scattering cross seciton being $\textrm{m}^2$? It is easier to explain from the perspective of energy.

When sound impinges on a scatterer, part of the acoustic energy is scattered, and part of the energy is absorbed. We can quantify the incident sound energy using the acoustics intensity $I$, which is the power carried by sound waves per unit area in a direciton perpendicular to the area. By thinking of the scatterer as intercepting the incident sound energy, it makes intuitive sense to consider the total acoustic power it absorbs ($P_{abs}$) and the total acoustic power it scatters in all directions ($P_{scat}$). We can therefore define the _total absorption cross section_ as 

$$
\sigma_{abs} = \frac{ P_{abs} }{ I_{inc} }
$$

and the _total scattering cross section_ as

$$
\sigma_{scat} = \frac{ P_{scat} }{ I_{inc} }
$$

which can also be expressed as the integral of differential scattering cross sections across all angles.

<!-- SEEMS GOOD TO REMOVE THESE DETAILS 
given a fixed incident angle $(\theta_i, \phi_i)$.
$$
\sigma_{scat} = \int \sigma(\theta_i, \phi_i, \theta_s, \phi_s) \, d\Omega_s
$$
-->

The total power removed from the incident sound $P_{abs} + P_{scat}$ can then be used to define the _extinction cross section_

$$
\sigma_e =  \frac{ P_{abs} + P_{scat} }{ I_{inc} } = \sigma_{abs} + \sigma_{scat}
$$




### Diving into different scattering sources

Now that we know where TS comes from and how it connects with different quantities in a scattering problem, in the next few sections let's take a look how different things scatter sound, and how we can use these properties in ocean sensing.
