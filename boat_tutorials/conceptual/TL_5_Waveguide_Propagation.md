It's time to bring it all together. In this section, we will discuss how all of what we have talked about impacts propagation in the ocean. We will begin by considering the simple case of a sound source and receiver near the sea surface to see how the interference of the non-reflected and reflected sound impacts what is measured at the receiver. After that we will bring in the seafloor and consider a case where sound is propagating through a shallow ocean and consider how the ocean boundaries affect the received signal in time.

# Propagation of sound near the sea surface

To see the role interference plays in the propagation of sound in the ocean, we start by considering a source at depth, $D_s$, below the sea surface. We will pretend that the seafloor is very deep and doesn't have a significant effect on the propagation. We will also assume that the speed of sound is the same everywhere throughout the water column. In this case, there will be two paths that the sound will follow to a receiver at some range, $r$, and depth, $D_r$: the path that connects the source and receiver without interacting with the surface, known as the **direct path,** and the path that reflects from the surface. Depending on the application, the direct path can be very important. It tends to be strong since it doesn't suffer any loss from the reflection at the boundaries and any information in the transmitted signal tends to be preserved. Depending on the environment, this path may not exist. For example a sound speed profile with a strong gradient might refract all the transmitted sound to the seafloor such that any path to the receiver will be reflected.

We will assume that the sea surface is flat and the only impact of reflection from the sea surface will be to multiple the incident sound by -1. The script below calculates the intensity due to point source continuously transmitting a single frequency tone as a function of range and depth throughout the water column.

**Placeholder for 1st part of Lloyd's mirror code:**
![[Lloyds mirror.png]]
<!--
Widget or python code corresponding to the Matlab script, 'TL_WIDGET_Lloyds_mirror.m' up to the line: '** Plot pressure time series'

-->

The pattern created by the interference of the direct and surface-reflected paths shows striations of strong constructive and destructive interference. Directly above the source, $x = 0$ m, the direct and surface-reflected sound is traveling in opposite directions. Along this line, the nulls occur at depths that are multiples of a half-wavelength, or $d = \frac{c}{2f}$, where $c = 1500$ m/s, regardless of source depth. Moving further out along the x-axis, the interference fringes dip down to form straight lines, radiating out from the origin.

In actual acoustic systems, an acoustic source is used to transmit a pulse instead of a continuous tone. To understand how to relate the pulse transmission to the continuous wave result shown above, the following script allows you to choose a receiver depth and range and the number of cycles to transmit in the pulse. The received signal is shown in two ways: the first is the pressure time series and the second is the intensity in dB.

**Placeholder for 2nd part of multiple sources code:**

![[Lloyds_pulse.png]]
<!--
Widget or python code corresponding to the Matlab script, 'TL_WIDGET_Lloyds_mirror.m' fro, the line: '** Plot pressure time series' to end

-->

In this scenario, the sound traveling along the direct path arrives first followed by the sound that is reflected from the surface. The reflected sound is always lower in amplitude since the pressure is proportional to the inverse of the distance traveled (1/$r$) and it has to travel further than the direct path. If the number of cycles transmitted is very short (< 5), the receiver is at short range (< 5 m), and both the source and receiver far from the sea surface (> 5 m), you can clearly see the two pulses arrive at separate times. As the number of cycles are increased and/or the receiver is moved further away, the two pulses will begin to overlap in time and interfere with one another. In the intensity plot, the red line shows the intensity that should be expected if a continuous tone was used. At the times when the pulses overlap, the interference of the two pulses produces an intensity that matches the continuous tone result.

# Propagation of sound in a waveguide

Now we are going to include the effects of the seafloor. We will again assume that the sound speed is constant throughout the water column and that the seafloor and sea surface are both perfectly smooth. We will use the fluid approximation for the seafloor and assume that it has the properties of one of the three types of sediments we considered earlier. In order to focus just on the impacts of the sea surface and seafloor we will also neglect absorption in the water column. (It would be nice at a future date to provide the option to include the absorption as a function of frequency so that the user can see that effect as well.) In this example, each path between the source and receiver is referred to as a ray and script allows us to increase or decrease the number of rays included in the calculation. If the number of rays is set to 2, then the script will only include the direct and surface paths making it identical to the seafloor-only case considered above.

**Placeholder for 1st part of propagation example code:**
![[Ray_calculation.png]]
<!--
Widget or python code corresponding to the Matlab script, 'TL_WIDGET_Propagation_example.m' up to the line: '** Time series calculation'

-->
As more rays are added to the calculation, the angles of the new rays get steeper and steeper. This will cause the seafloor reflection coefficient to decrease, increase the number of times the ray will reflect from the seafloor, and will meant that each path will get longer and longer. All of these will lead to a decrease in the pressure level for the sound traveling along that path. As a consequence, the contributions from additional rays will become less and less important to the received signal. To see this, we will use the ray paths to calculate the time series for the source transmitting a single frequency pulse, similar to what was done in the seafloor-only case.

**Placeholder for 2nd part of propagation code:**
![[Time_series.png]]
<!--
Widget or python code corresponding to the Matlab script, 'TL_WIDGET_Propagation_example.m' from line reading '** Time series calculation' to end

-->
As before, if the pulse is short, high frequency, and near the source, the individual arrivals coming in along the different paths can be clearly discerned. As the frequency is decreased and the pulse is lengthened, the individual paths interfere. If enough rays are added, the contributes smooth out to a steady level. 

A more realistic ocean environment could include a depth-dependent sound speed in the water column, range-dependence to the bathymetry of the seafloor, changes in the seafloor properties as a function of range and depth, etc. With a more complicated environment comes the need for more involved computational methods to model the acoustic field. Future notebooks will explore these methods and provide examples.

[[TL_6_Transmission_Loss]]