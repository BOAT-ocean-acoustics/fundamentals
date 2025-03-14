(conceptual-receiver)=
# Sound reception

In this tutorial, we will use the receive level (RL) term in the SONAR equation as a starting point to discuss foundational concepts in sound reception.

## Receive level
Receive level (RL) is what we typically measure when trying to listen to the ocean. This is intuitive, since when looking back at the [acoustic lives of the orcas](conceptual-intro_orca_and_sonar_equation), you see that:
- RL combines all effects from sound transmission (SL) and propagation through the environment (TL) when Ola is [_purely listening_](conceptual-intro_orca_comms):

    $RL = SL - TL$

- RL combines sound transmission, two-way propagation, and scattering (TS) when Ola is [_pinging and listening_]((conceptual-intro_orca_fish_echo)):

    $RL = SL - 2TL + TS$



With RL, we can often tell whether a sound source (such as another whale) is present against a much quieter background. However, since most sound recordings are a time series (a series of high and low voltage measurements) and not a single number, we need to know how to turn that into RL. In addition, there are other informative sound attributes other than the "level" (loudness), such as the temporal pattern and its frequency content. For example, the sound of wind, rain, cracking ice, and various animals are all different. We will dive deeper into these attributes in the [Spectral analysis](conceptual-spectral) tutorial and practice with real-world data during the hands-on exercise sections.

First, let's see how we can actually capture sound in the ocean!


<!-- 
THERE IS NO "TIME" IN THE SONAR EQUATION!
- however, note that there is no "time" in the sonar equation!
    - but notice that when we explained each term in previous sections, we often draw time series of the signal
    - what happens here is that we actually implicitly "gated" the time series to isolate a specific component of the sonar equation
-->


## Hydrophone and receiving sensitivity 

(conceptual-receiver_hydrophone)=
### Hydrophone
The simplest instrument we can use to capture sound in the ocean is a hydrophone. Hydrophone is a "transducer" that can convert sound pressure into voltage, which can then be recorded into a computer or a recorder. 

```{Note}
:class: note
Transducers can also convert voltage into pressure and are used as acoustic sources (transmitters), which are discussed in the [Acoustic sources](conceptual-source) tutorial.
```

<!-- HERE WE CAN BRING IN AN IN-DEPTH PAGE TALKING ABOUT PIEZOELECTRIC MATERIALS -->

Hydrophones come in all sizes and shapes, but the commonest ones all look like a blob connected with a cable, like those shown below:

ADD HYDROPHONE PICTURES

The "blob" usually is where the transudcer element is located, sometimes with supporting electronics, all encapsulated in polyurethane to protect these elements from the environment.

(conceptual-receiver_receiving_sensitivity)=
### Receiving sensitivity
When measuring sound underwater, an important consideration is the _receiving sensitivity_, which characterizes how well the hydrophone can convert sound at different frequencies into voltage signals. Therefore, usually the receiving sensitivty is expressed in values and units like **-180 dB re 1V/µPa**, which means that this hydrophone will produce a voltage of -180 dB re 1V, or $10^{-9}$ V (see [what decibel (dB) means here](primer-decibel)) in response to a sound pressure of 1 micropascal (µPa). The negative value here just means that the conversion factor is a small number. The receiving sensitivity is what we are after when trying to _calibrate_ a hydrophone.

ADD WIDGET:
- ALLOW CHANGING SENSITIVTY AND INPUT VOLTAGE
- GOAL IS TO DEVELOP THE INTUITION THAT INCREASING SENSITIVITY (MAKING IT LESS NEGATIVE) WOULD PRODUCE A LARGER VOLTAGE SIGNAL





## How do acoustic signals looks like?
- bring in the concept of a "time series" and connect with the single value "level" above
- show waveforms of impulsive and continuously varying sounds
- talk about the concept of gating out a short signal section in analysis
    - potentially using multipath to explain
- tip: connect to Spectral analysis

ADD WIDGET:
- VARY: SOUND FREQUENCY
- PLOT WAVEFORM CHANGES
- GOAL IS TO SHOW THE INVERSE RELATIONSHIP BETWEEN FREQUENCY AND WAVELENGTH






## Quantifying received sound

Once sound signals are captured by hydrophones, how do we quantify what's in the received sound?


### Sound pressure level (SPL)
One of the commonest measure is **sound pressure level (SPL)**, which characterizes how loud the sound is and is usually written as:

$\textrm{SPL} = 20 \log{ \frac{P}{P_{ref}} }$

where $P$ is the sound pressure, and $P_{ref}$ is the reference pressure. This is why the unit of SPL is typically in the form of **dB re 1 µPa**, as it is a logarithmic measure of the ratio between the sound pressure and a reference pressure.

```{Note}
:class: note
The reference pressure is usually 1 µPa in water and 20 µPa in air, which makes a big difference in the resulting SPL values!
```

In practice, to calculate SPL from hydrophone measurement, we often use:

$\textrm{SPL} = 20 \log{ \frac{V}{V_{ref}} } - M$,

where $V$ is the measured voltage and $M$ is the receiving sensitivity. To see how this formula comes about, let's start with the linear domain quantities:

$V = P \times m$,

where $m$ is the linear receiving sensitivty (i.e. $M=20 \log{m}$). Dividing both sides by $V_{ref}$ and multiply the right hand side by $\frac{P_{ref}}{P_{ref}}$, we get

$\frac{V}{V_{ref}} = \frac{P}{P_{ref}} \times \frac{P_{ref}}{V_{ref}} \times m$.

Taking the equation to the log domain:

$20 \log{ \frac{V}{V_{ref}} } = 20 \log{ \frac{P}{P_{ref}} } + 20 \log{ \frac{m}{ V_{ref} / P_{ref}} }$,

which gives

$20 \log{ \frac{V}{V_{ref}} } = \textrm{SPL} + M$,

and hence the above formula.

When there is a gain factor $G$ applied to the voltage signal by electronics associated with the hydrophone, we have

$\textrm{SPL} = 20 \log{ \frac{V}{V_{ref}} } - M - G$.

Here there is a minus sign before $G$, since to return to the original measured quantity, we need _remove_ the influence of the gain.


### Sound pressure metrics

However, most sound recordings consist of a series of voltage measurements. How do we choose a point to calculate the SPL, and is that even the right way to do it?

Indeed usually we do not report a single point on a voltage time series, but use a metric or a descriptor. Most metrics are based either directly on sound pressure, or on sound intensity $I$, which is proportional to the square of sound pressure ($I = \frac{P^2}{\rho c}$). Precisely because the goal is to quantify sound received in a time series, you will notice the time period under consideration ($T$) in all of the common metrics below:

- Root mean square (RMS) pressure [unit: Pa]: 

  $P_\textrm{RMS} = \sqrt{ \frac{\int_T P(t)^2 dt}{T} }$

- Peak-to-peak (p2p) pressure [unit: Pa]:

  $P_\textrm{p2p} = P_\textrm{max} - P_\textrm{min}$ during the time period under consideration

- Energy flux density (EFD) [unit: W/m$^2$]:
  
  $E = \int_T I(t) dt$

Different from RMS and p2p pressure, EFD is a cumulative measure and is often used to quantify sound energy exposure for marine animals.



```{Tip}
:class: tip
You may already know each signal has a specific frequency content, or "spectrum." The signal spectrum is very important in distinguishing different types of signals and many other applications. Learn more in the [Spectral analysis](conceptual-spectral) tutorial.
```


ADD WIDGET:
- SIGNAL TYPES: IMPULSE, TAPERED SINE WAVE (NO TAPER TO FULLY TAPERED)
- ALLOW CHANGING SINE WAVE LENGTH, AMPLITUDE, TAPERING
- ALLOW CHANGING IMPULSE AMPLITUDE
- PLOT RMS, P2P LEVEL ON THE FIGURE
- SHOW EFD, RMS, P2P NUMBERS AS OUTPUTS


<!-- NOTE: LEAVING ANYTHING IN THE FREQ DOMAIN TO SPECTRAL ANALYSIS TUTORIAL -->





## Receiving directionality

<!-- 
THIS IS NOT QUITE RIGHT BECAUSE THE PINNAES DO NOT HAVE SENSORS ON THEM!

Cats or dogs can turn their ears to capture sound originating from different directions. While most humans cannot move our ears that effectively, our pinnae (outer ears) still provide a similar advantage, such that we typically hear better when facing toward the sound source.

ADD PICTURE OF CAT / DOG / HUMAN EARS
-->

INSTEAD OF EARS, TALK ABOUT MOST RECEIVERS IN THE PHYSICAL WORLD HAS A SHAPE, SO NOT THE IDEAL RECEIVER WE DISCUSSED BEFORE.
WITH A SHAPE AND DIMENSION THERE COMES DIRECTIONALITY


This phenomenon is known as _directionality_—the ability for a receiver to isolate sound from different directions in order to hear more clearly. Directionality arises because sound waves arriving at different parts of a receiver capture slightly different versions of the same sound. When these signals are combined, they create constructive and destructive interference depending on the sound direction.

We can see this clearly in the scenario (widget) below. Depending where the sound comes from and the sound frequency, the signals captured by the 2 receiving elements can differ significantly and impact the amplitude of the summed signals, which is what we would measure from this compounded receiver.

ADD WIDGET
- FIX 2 ELEMENTS
- VARY: SOUND FREQUENCY
- VARY: SOUND SOURCE DIRECTION: PLOT ON THE RIGHT AS AN ARROW
- PLOT 2 RECEIVED SIGNALS ON THE LEFT OF ELEMENT
- PLOT THE SUM OF THE SIGNALS BELOW THE INDIVIDUAL SIGNAL
- PLOT A VERTICAL GRAPH ON THE RIGHT SHOWING RMS OR PEAK AMPLITUDE VS ANGLE, WITH A POINT INDICATING THE CURRENT SOURCE DIRECTION

The directionality also changes depending on the number of elements in the compounded receiver:

ADD WIDGET
- N ELEMENTS (VARIABLE)
- VARY: ELEMENT SPACING
- VARY: FREQUENCY
- PLOT SOUND SOURCE DIRECTION ON THE RIGHT AS AN ARROW
- PLOT THE SUM OF THE SIGNALS BELOW THE INDIVIDUAL SIGNAL
- PLOT A VERTICAL GRAPH ON THE RIGHT SHOWING RMS OR PEAK AMPLITUDE VS ANGLE, WITH A POINT INDICATING THE CURRENT SOURCE DIRECTION



<!-- HERE WE CAN EASILY LINK TO IN-DEPTH MATERIALS TO EXPLAIN MORE USING EQUATIONS -->



```{Tip}
:class: tip
Now you have the intuition of where receiving directionality comes about and what happens when the number of receiving elements changes. You will soon see how the same concept applies on [acoustic sources](conceptual-source)!
```
