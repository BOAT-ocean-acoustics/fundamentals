(acoustics-source)=
# Sound sources

From our everyday experience, we encounter many sources of sound in our environment: A knuckle rapping on a door, the wind blowing through the leaves of tree, a group of people having a conversation, etc. While these sound sources are all very different from one another, they each have common properties that we can use to describe and compare them. These include the amplitude of the sound being produced, the changes in the sound over time, and the directions in which the sound is being projected. In the following notebook, we will look closely at these descriptors of sound, with a particular focus on sonar systems.

```{admonition} **Learning objectives**
:class: tip
1. Learn the terminology used to describe the properties of a sound source.
2. Understand the difference between the far-field and near-field of a transducer.
3. Learn how the beampattern of a simple, circular piston source changes with frequency and size.
4. Learn how the directionality of a sound source can be integrated into the sonar equation.
```

## Source level

Source level (SL) is a measure of the loudness of a sound source. From the orca examples, when Ola is [_purely listening_](acoustics-intro_orca_comms),

$RL = SL - TL,$

or when Ola is [_pinging and listening_]((acoustics-intro_orca_fish_echo)),

$RL = SL - 2TL + TS,$

higher values of SL lead to higher received levels. As we will see, the source level term can be modified by aspects of the sound source such as its directionality, which we can introduce into the sonar equation to get a better description of the acoustic system.

## Sonar systems

Before diving in, it's worth talking about what we mean when we say "sonar systems." These usually refer to a human-made sound producing and/or receiving system that operates underwater. The basic idea behind a sonar is that it takes an electronic signal, typically a voltage that varies in time, and feeds that signal into a transducer which transforms that voltage into mechanical motion that generates sound. Any device that converts energy from one form to another is called a **transducer.** For example, the speaker in your headphones uses an electrical current to move a magnet which vibrates a surface against the air to produce sound. There are many types of transducers used in the design of sonars and the choice of transducer is often determined by the characteristics of the sound that needs to be produced. For example, an echosounder might use a small disk of piezoelectric material to produce a high-frequency, narrow beam of sound (like the RESON TC 3021 transducer pictured on the left) while scientists trying to transmit low-frequency sound across the Pacific Ocean used the 3-ton sound source pictured on the right.

```{image} ../images/reson_TC3021.jpg
:width: 300px
```
```{image} ../images/KAUAI_source.png
:width: 300px
```
(acoustics-spherical_source)=
## Spherical sources

We will start by considering the simplest type of transducer: the spherical source. Ideally, as the name suggests, this source is a sphere of constant radius that is designed to produce sound by uniformly getting bigger and smaller, changing it's radius as a function of time. This change in size pushes against the surrounding water sending sound in all directions and generates a [spherical wave](acoustics-spherical_wave). 

The benefit of this type of source is that the intensity of the projected sound does not depend on the orientation of the transducer. In reality, though, a perfectly spherical source is hard to produce. Mounting the transducer and connecting the wires to provide electricity to the transducer can disrupt the spherical symmetry of the source and causing the transmitted sound to be no longer uniform. The transmitted sound then becomes dependent on the orientation of the source. Often this dependence can be weak or there can be orientations where the outgoing field looks approximately spherical. Regardless, with any source there is a need to characterize the outgoing sound field.

