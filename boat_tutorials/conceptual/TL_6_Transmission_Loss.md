Transmission loss is defined as the ratio of the intensity of transmitted sound at some range, $r$, to the intensity of the transmitted sound at $r =$ 1 m expressed in dB,
$$ TL\left(r\right) = -10\log_{10}\frac{I\left(r\right)}{I\left(1\right)} = -20\log_{10}\frac{\left|p\left(r\right)\right|}{\left|p\left(1\right)\right|}.  $$
The transmission loss is usually separated into two components, the loss due to spreading of the sound and the loss due to absorption or attenuation during propagation. 

For spherical spreading, the pressure decreases as 1/$r$ so in this case the spreading loss contribution to TL becomes,
$$ TL\left(r\right) = -20\log_{10}\frac{1}{r} = 20 \log_{10} r. $$
When sound is trapped in an ocean waveguide, the sea surface and seafloor prevent the sound from spreading in the z-direction and the sound is confined to a cylindrical space. This cylindrical spreading causes the pressure decrease proportion to the $1/\sqrt{r}$ . In this case, the transmission loss becomes,
$$TL\left(r\right) = -20\log_{10}\frac{1}{\sqrt{r}} = 10 \log_{10} r. $$
Absorption is defined in the units of dB/m, so to add the impacts of absorption to transmission loss, we need to add the term $a\left(r - 1\right)$ where $a$ is the absorption coefficient in dB/m. This term insures that the absorption contribution goes to zero at $r =$ 1 m since it is already accounted for at that range in the intensity ratio. For a source in water with constant sound speed and no boundaries, 
$$ TL\left(r\right) = 20 \log_{10} r + a\left(r - 1\right).$$
This expression would be applicable, to a good approximation, to downward propagation from echosounder. 

There is no exact or straightforward way to account for losses due to the seafloor reflections or for the effects of refraction due to the depth or range dependence of the water sound speed, but occasionally one can make approximations to get an estimate of the TL. For example, recall that for a fast sediment with weak attenuation, the reflection coefficient is close to one for all grazing angles below the critical angle, $\phi_c$. As an approximation, we can assume that the reflection coefficient can be treated as $R = 1$ for these angles. As a result, all of the sound transmitted between $\pm\phi_{c}$ will be trapped in the waveguide, while the sound at higher grazing angles will be lost quickly into the seafloor. One can then derive a expression for the transmission loss in this waveguide,
$$ TL\left(r\right) = 10 \log_{10} r + 10 \log_{10}\frac{H}{2\phi_{c}} + a\left(r - 1\right).$$
