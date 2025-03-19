(conceptual-source)=
# Source level

## Introduction

From our everyday experience, we encounter many sources of sound in our environment: A knuckle rapping on a door, the wind blowing through the leaves of tree, a group of people having a conversation... While these sound sources are all very different from one another, they each have common properties that we can use to describe and compare them. These include the amplitude of the sound being produced, the changes in the sound over time, and the directions in which the sound is being projected. In the following notebook, we will look closely at these descriptors of sound and the sources that produce it, with a particular focus on sonar systems.

Before diving in, it's worth talking about what we mean when we say "sonar systems." The term "sonar" was originally coined as an acronym for Sound Navigation and Ranging and usually refers to a sound producing and/or receiving system that operates underwater. The basic idea behind a sonar is that it takes an electronic signal, typically a voltage that varies in time, and feeds that signal into a transducer which transforms that voltage into mechanical motion that generates sound. Any device that converts energy from one form to another is called a transducer. For example, the speaker in your headphones uses an electrical current to move a magnet which vibrates a surface against the air to produce sound. There are many types of transducers used in the design of sonars and the choice of transducer is often determined by the characteristics of the sound that needs to be produced. For example, an echosounder might use a small disk of piezoelectric material to produce a high-frequency, narrow beam of sound while scientists trying to transmit low-frequency sound across the Pacific Ocean used a [NEED DETAILS].

![Kauai Source](./images/KAUAI_source.png)


- General comments on the generation of sound
	- Natural sources
	- Sonars
- Considerations that go into the design of sonars:
	- How loud should it be?
	- What frequency or frequencies should it operate at?
	- How big a space do you want to ensonify (like illuminate but with sound)?
	- What is the size requirement for the transducer? Do you want to mount it in the side of a big ship (long range navy sonar) or be able to carry it onto and use it from a kayak (fish finder)?
- Frequency often dictates the size of the acoustic source
	- A loud, low-frequency source needs to be big.
		- Consider the bass in a pair of headphones versus a subwoofer.
		- Example for ocean acoustics might be the Kauai source (we can probably get a picture from Rex)
	
## Signal Types

- General discussion.

### Continuous Wave (CW)

- Simplest waveform is one that contains a single frequency transmitted as a sine wave.
- Need for gating:
	- Short pulse (ping)
	- short pulse = less energy but better range resolution (connect to TS and TL?)
- Distinguishing targets (animals, man-made objects, etc.) often requires multiple frequencies
	- Send bunch of sinewaves at different frequencies
- Benefits:
	- Can be easy to create
		- relatively simple electronics and source
	- Easy to process and interpret
- Drawbacks:
	- May need to send many different pings to cover frequencies of interest
	- Short pulses needed for good range resolution but since they have low energy, it may make the scattered signal hard to identify in high noise.
- Simulation:
	- Combination of time series plot and spectrogram
	- Ability to define amplitude, frequency, pulse length, and maybe start time for multiple CWs?
		- Idea would be to see the how both time series and spectrogram looks when single and multiple CWs are transmitted.
### Frequency Modulated Signal (Chirp) 

- Also known as frequency modulated (FM) signal
- Chirp has a range different frequencies in a single signal
- Pulse compression?
	- Received signal can be processed so that all the frequencies are shifted so that the occur at once
	- This creates a very narrow and strong signal.
- Types of chirps:
	- Linear chirp: Frequency increases (or decreases) at a constant rate as a function of time
		- Often used in echosounders and other types of sonars
	- Hyperbolic chirps: Frequency increases at a increasing rate as a function of time
		- More frequencies present at the beginning or end of the chirp
		- Examples: bats, beaked whales?
-  Benefits:
	- Single signal can carry a lot of frequency information
- Drawbacks
	-  sdfas
- Simulation:
	- Combination of time series plot and spectrogram
	- Ability to define amplitude, start and end frequencies, pulse length
		- Do we want to include type of chirp (linear, hyperbolic, etc.)?
### Impulsive sound

- A lot of frequencies are created at once to make a very short pulse
	- Simplest example is a hand clap.
- Examples:
	- Explosive sources
		- Implosion of light bulb (loud and cheap, and a bit random)
		- Airguns (how controllable are the sources?)
		- TNT
	- Animal sounds
		- Many animals use clicks for echolocation
			- bats, whales, dolphins,...
		- and communication
			- fish, shrimp,...
- Benefits:
	- Pulses can contain a lot of frequency information
	- Pulse can be very short leading to very good range resolution
- Drawbacks:
	- Can be hard to generate identical pulses
	- Require very specialized sources (light bulbs, explosives, air gun,...)

## Beam Pattern

- Introduce idea of directivity of the sound source
	- Simple example might be using a megaphone?
	- Even simpler would be to cup hands around mouth.
	- In both of those cases the sound is louder for people in front of you than if they are behind you.
- An omnidirectional source transmits sounds equally in all directions (hence the name).
	- A popping balloon is a good example of an (approximately) omnidirectional source.
- More common is for the sound from an acoustic source to depend on the direction from the source.
	- This direction dependence of the source is often a consequence of the interference of sound coming from different parts of the source.
	- Consider the dipole.
	- Widget to construct more complicated collections of sources to show how they interfere?

### Line source?

- Special case of a collection of sources uniformly distributed along a line segment.
	- (Special case of the widget with sound sources)
	- A long way from the broadside of the line of sources, the sound from all of the sources arrives at roughly the same time and constructively interferes.
	- As you move away from broadside, transition through regions of constructive and destructive interference.
		- Define Beam and beam width.
		- Source level (axial response, broadside in this case)
		- Directivity??? Directivity Index???
		- Near field vs. far field
- Consider what happens when the density of sources along the line becomes very large
	- Again a widget is useful here.
	- Integrate along that line to get a line source.
		 
### Circular Source

- Another simple but useful example is a baffled circular piston
	- The piston vibrates normal to the surface and generates sound.
	- Beam pattern in axisymmetric
	- Many actual sonars use a source that is approximately similar to a circular piston
- Equation (or maybe even the derivation) in a seperate notebook
- Maybe give examples where axisymmetric source is useful.
	- Echosounder
	- ???
	
### Rectangular Source

- Final example to show that transducers can have asymmetric beam patterns
	- How best to illustrate this?
	- 3D simulation?
	- Projection of the beam pattern onto a spherical surface?
- Define beam parameters for different directions.

## Applying this information

- Example of opening a sonar spec sheet and finding sonar characteristics and relating them back to the concepts above.