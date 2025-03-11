# Received level


## Introduction
- received level (RL) combines all effects in the round trip from transmission ([link to SL page]()), propagation ([link to TL page]()), and scattering ([link to TS page]())
    - RL is typically what we measure from the ocean
    - connect back to sonar equation
- however, note that there is no "time" in the sonar equation!
    - but notice that when we explained each term in previous sections, we often draw time series of the signal
    - what happens here is that we actually implicitly "gated" the time series to isolate a specific component of the sonar equation


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
