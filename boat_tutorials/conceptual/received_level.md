(conceptual-receiver)=
# Acoustic receivers

In this tutorial, we will look under the hood of the receive level (RL) term in the SONAR equation.

## Receive level (RL)
RL is what we typically measure when trying to listen to the ocean. This is intuitive, since when looking back at the [acoustic lives of the orcas](conceptual-intro_orca_and_sonar_equation), you see that RL combines all effects from sound transmission (SL) and propagation through the environment (TL) [during orca communication](conceptual-intro_orca_comms), and includes sound transmission, two-way propagation, and scattering (TS) [during orca foraging](conceptual-intro_orca_fish_echo).

Here are the SONAR equations here as a reminder:
- Communication / listening: RL = SL - TL
- Foraging / pinging: RL = SL - 2TL + TS

<!-- 
THERE IS NO "TIME" IN THE SONAR EQUATION!
- however, note that there is no "time" in the sonar equation!
    - but notice that when we explained each term in previous sections, we often draw time series of the signal
    - what happens here is that we actually implicitly "gated" the time series to isolate a specific component of the sonar equation
-->


## How to capture sound: Hydrophone and receiving sensitivity 

(conceptual-receiver_hydrophone)=
### Hydrophone
The simplest instrument we can use to measure sound from the ocean is a hydrophone. Hydrophone is a "transducer" that can convert sound pressure into voltage, which can then be recorded into a computer or a recorder. 

```{Note}
:class: note
Transducers can also convert voltage into pressure and are used as acoustic sources (transmitters), which are discussed in the [Acoustic sources](conceptual-source) tutorial.
```

Hydrophones come in all sizes and shapes, but the commonest ones all look like a blob connected with a cable, like those shown below:

ADD HYDROPHONE PICTURES

The "blob" usually is where the transudcer element is located, sometimes with supporting electronics, all encapsulated in polyurethane to protect these elements from the environment.

(conceptual-receiver_receiving_sensitivity)=
### Receiving sensitivity
When measuring sound underwater, an important consideration is the _receiving sensitivity_, which characterizes how well the hydrophone can convert sound at different frequencies into voltage signals. Therefore, usually the receiving sensitivty is expressed in values and units like **-180 dB re 1V/µPa**, which means that this hydrophone will produce a voltage of -180 dB re 1V, or $10^{-9}$ V (see [what decibel (dB) means here](primer-decibel)) in response to a sound pressure of 1 micropascal (µPa). The negative value here just means that the conversion factor is a small number. The receiving sensitivity is what we are after when trying to _calibrate_ a hydrophone.

ADD WIDGET:
ALLOW CHANGING SENSITIVTY AND INPUT VOLTAGE
GOAL IS TO DEVELOP THE INTUITION THAT INCREASING SENSITIVITY (MAKING IT LESS NEGATIVE) WOULD PRODUCE A LARGER VOLTAGE SIGNAL





## What to measure: Quantifying received sound

Once sound signals are captured by hydrophones, how do we quantify what's in the received sound?

One of the commonest measure is the **sound pressure level (SPL)**, which characterizes how intense the sound is. It is usually written as:

$\textrm{SPL} = 20 \log{ \frac{P}{P_{ref}} }$

where $P$ is the sound pressure, and $P_{ref}$ is the reference pressure. This is why the unit of SPL is typically in the form of **dB re 1 µPa**, as it is a logarithmic measure of the ratio between the sound pressure and a reference pressure.

```{Note}
:class: note
The reference pressure is usually 1 µPa in water and 20 µPa in air, which makes a big difference in the resulting SPL values!
```

In practice, to calculate the SPL from hydrophone measurement, we often use:

$\textrm{SPL} = 20 \log{ \frac{V}{V_{ref}} } - M$,

where $V$ is the measured voltage, $M$ is the receiving sensitivity. To see how this formula comes about, let's start with the linear domain quantities:

$V = P \times m$,

where $m$ is the linear receiving sensitivty (i.e. $M=20 \log{m}$). Dividing both sides by $V_ref$ and multiply the right hand side by $\frac{P_{ref}}{P_{ref}}$,

$\frac{V}{V_{ref}} = \frac{P}{P_{ref}} \times \frac{P_{ref}}{V_{ref}} \times m$.

The equation in the log domain is then

$20 \log{ \frac{V}{V_{ref}} } = 20 \log{ \frac{P}{P_{ref}} } + 20 \log{ \frac{m}{ V_{ref} / P_{ref}} }$,

which gives

$20 \log{ \frac{V}{V_{ref}} } = \textrm{SPL} + M$,

and hence the above formula.

When there is a gain factor $G$ applied to the voltage signal due by electronics associated with the hydrophone, we have

$\textrm{SPL} = 20 \log{ \frac{V}{V_{ref}} } - M - G$,

since to return to the original measured quantity, we need _remove_ (minus) the influence of the gain.





## What can you measure
- sensitivity
    - this is what we want to get from calibration
- sound pressure level (SPL)
    - intensity
    -  [link to decibel page]()
- RMS, peak-to-peak, energy density flux
    - show forumlae
- spectrum
    - [link to Fourier analysis page]()
- **widget**:
    - allow changing signal type, duration, frequency and/or bandwitdh, amplitude
    - show RMS/p2p/EDF numbers and plot spectrum
- beamforming:
    - intuition: inducing constructive and destructive interference to "focus" on a particular direction
    - leave details to [deeper level]()
    - **widget**: linear array
        - allow changing: number of elements, element spacing, frequency, systematic delay to "steer" the beam
- sources contributing to soundscape (show example)
    - rain
    - ice cracking
    - wind, breaking wave
    - snapping shrimps


## Example uses
- detect target presence
- distinguish target types
- understanding propagation environment
