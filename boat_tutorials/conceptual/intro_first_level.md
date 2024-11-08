(conceptual)=
# Conceptual framework

In this set of notebooks, we will focus on getting a solid conceptual level of understanding of how we can decompose an ocean acoustics problem into multiple pieces that can be considered separately to gain a holistic picture of the problem.


## Learning goals

Taking a systems approach to understand ocean acoustics problems, our learning goals are to be able to:
1. Identify the components of the system underlying the research problem you are working on
2. Identify the relationships of difference components in the system
3. Determine which components are knonwn and unknown
4. Understand what is possible to achieve when trying to characterize the unknowns
5. Identify caveats in the measurement or inference/estimation process in the system




(conceptual-overview)=
## Overview: motivating examples

<!-- Description of scenarios without using the sonar equation first -->

Let's start with an overview of general ocean acoustics problems with two motivating examples.
For the fun of it, and the importance of how this example embodies the interdisciplinary nature of ocean acoustics, let's use the lives of Orcas, or or killer whales (_Orcinus orca_), to guide our exploration. In this example and the follow up expansions later on this page, you will notice how the physics of sound, the biology of the whales and fish, the ocean environments, and our instruments all play a role in understanding the problem.

We will also briefly introduce other examples of how the elements we consider here in ocean acoustics are related to our daily lives.


(conceptual-overview-orca)=
### How do we study the life of an Orca?
Killer whales are toothed whales (odontocetes) that use sound to communicate with each other and find food in the ocean. There are two types of killer whales living on the west coast of the north American continent: the ["resident" and the "transient"](REF) killer whales.

Resident killer whales typically hang out in coastal waters and primary feed on fish, as salmon. Since these fish don't make sound, the whales transmit impulsive and directional sounds (the ["clicks"](REF)) and use the returning echoes to find, track, and catch the fish. This is a special sensing modality called "echolocation," which not only killer whales, but all toothed whales and most bats also use. In this case, these fish species don't hear sounds produced by the killer whales because that is beyond their hearing range. However, note that this is not always true, as there are fish species with specialized high frequency hearing capability that can hear sounds above 20 kHz (which is considered "ultrasonic" for humans).

Transient killer whales, on the other hand, rely heavily both on listening and echolocation to find their marine mammal prey, such as seals. Since the seals also use sound to communicate with one another and therefore hear well underwater, transient killer whales tune in to listen to sounds made by seals in order to detect and localize them, before switching to intensive echolocation clicks only when they are engaged in active pursuits to catch the seals.

Both resident and transient killer whales use a rich repertoire of sounds to communicate with each other. In fact, previous researches have found that different killer whale "pods" (matrilineal groups formed around genetically related females) have [distinct call patterns](https://orca.research.sfu.ca/call-library). This means we can acoustically inder the group identity of killer whales, which is really useful, since it is difficult to observe these aquatic animals effectively only from above the water surface.

With these whales' extensive use of sound in communication and foraging, we quickly realize that we can use hydrophones to detect their presence, determine their group identity, and infer what activities they may be engaged in (e.g., feeding or socializing). Multiple hydrophones can form a network to study these whales over a larger special area, since each hydrophone can only hear the whale effectively within a certain distance. In fact, this is what [Orcasound](https://www.orcasound.net/) is doing in the northeast corner of the Pacific Ocean. In addition to hydrophones, scientists have also put small electronic packages ("tags") with hydrophones and other sensors on the whales, to record the sounds the whales produce and experience together with their movements. Notably, these tags can be thought of as providing a types of observation that is more from the tagged whale's perspective. For example, one can see the rapid approach of a whale closing in on a fish via an [echogram](REF) formed by aligning the amplitude of the echo returns over consecutive echolocation clicks.

Knowing all the above about the killer whales, we may start to ask questions like:
- How far away can killer whales hear each other? How do we know how far away can we hear the whales using hydrophones? Does this distance change depending on the type of sounds emitted by the whales?
- How do the whales know what type of fish they are "seeing" through echolocation? Are the echoes similar when there is a single fish vs when there are many fish? How do the echoes change depending on the size of the fish?
- How do we select a good hydrophone to detect the whales? What are some characteristics to consider?

Below, we will introduce [the mighty "sonar equation"](conceptual-sonar_equation) that can help us answer these questions.


<!-- 
- other examples
    - blue whales communicate across ocean basin
    - humpback whales cultural transmission of call units
 -->


(conceptual-overview-human)=
### How are these related to our daily lives?
Even though we do not live in an underwater environment, and as humans we typically rely predominantly on vision to navigate the world, sounds still play an important component of our daily lives. Listening is an important sensory modality for us to understand the environment. For example, we can usually tell how heavy the rain is by the sounds of raindrops hitting the windows; in a large and empty room, we often notice the presence of echoes of the sounds we make. Listening can also bring a powerful and emotional experience, as people who have attended concerts can attest to. In addition, many unsighted humans have also developed the ability to navigate by echolocation, just like the killer whales.

As humans, we have also developed technologies that use the same principles as echolocation to probe our environments. For example, we use radar systems, which transmit electromagnetic waves and receive the "echoes" bounced off objects in the air to detect and track airplanes, characterize weather phenomena including cloud cover, rain, snow, etc., and even observing the migration of large herds of birds in the night sky. We also use medical ultrasound to image the interior of human body as a non-invasive diagnostic tool.

The principles and elements we will learn from the section about the sonar quation can also be applied in these cases to understand our experiences of listening to sounds in our surrounding environment and these technologies.






(conceptual-sonar_equation)=
## The mighty sonar equation

The Sonar Equation provides a systematic framework to help us understand the different components involved in either pure listening or active sensing (echolocation) using sound. Here, sonar stands for **SO**und **N**avigation **A**nd **R**anging. In pure listening scenarios, the sonar equation is written as:

$$
RL = SL - TL,
$$

and in the active sensing scenario, it is written as:

$$
RL = SL - 2 TL + TS
$$

Here, $RL$ denotes receive level, $SL$ denotes source level, $TL$ denotes transmission loss, and $TS$ denotes target strength. You may find references that write the sonar equation in slightly different forms. For example, some may include noise level ($NL$), array gain ($AG$), or directivity index ($DI$), like on the [DOSITS](https://dosits.org/science/advanced-topics/sonar-equation/) website. These variations stem from the exact setup of the problem that you are considering and the instrument choices. In the following we will provide you the understanding of the most basic terms shown in the above, and in the breakdown sections you will learn about where the other terms come from.

`````{Tip}
:class: tip
Discovery of Sound in the Sea (DOSITS) contains a wealth of information to read about!
`````



- Sonar equation: RL = SL + 2 TL + TS
- what are these terms? (conceptual descriptions of each term)
    - RL: receive level
    - SL: source level
    - TL: transmission loss
        - sound travel takes time, the medium matters (air vs water)
    - TS: target strength
- Diagram for the connection between all the components
- Two examples (with pictures!) consisting of the terms (some are known, some are unknown)
    1. killer whale hunting for fish
        - goal of analysis: are these fish salmon or herring?
        - assumptions: no multipath
    2. humans use hydrophones to listen for killer whales
        - goal of analysis: how far are the whales?
        - assumptions: constant sound speed profile/absorption
- Goal of analysis
    - are these fish salmon or herring?



## What are decibels, and why do we use them?
- General discussion of decibels
- How sound “looks” like – find some nice websites (google famous sounds?)




## How are these related to your own research?

### Exercise
1. How do we use echosounder to probe the environment?
    - what are the components in the sonar equation this maps to?
    - identify at least one possible research question can be answered from echosounder experiment and at least
    - identify at least one caveat associated with the approach
2. Mapping your research project onto the sonar equation
    - discuss which component your work falls into
    - what are the caveats?
