(conceptual)=
# Conceptual framework

In this set of notebooks, we will develop a solid understanding of how to breakdown an ocean acoustics problem into distinct components that can each be analyzed separately. This approach provides a structured framework that will help us gain a holistic picture of the problem.


## Learning goals

Taking a systems approach to understanding ocean acoustics problems, our learning goals are to be able to:
1. Identify key components of the **system** underlying the problem
2. Analyze the relationships of different components within the system
3. Differentiate known and unknown components
4. Assess what can be realistically achieved when characterizing the unknowns
5. Recognize potential caveats in the measurement, inference, or estimation processes


(conceptual-overview)=
## Motivating example: Studying the lives of orcas using sound

<!-- Description of scenarios without using the sonar equation first -->

Let's start with a general overview of ocean acoustics problems with a motivating example.
For both fun and to highlight the interdisciplinary nature of ocean acoustics, we will use the lives of orcas, or or killer whales (_Orcinus orca_), to guide our exploration.
Through this example, you will see how the physics of sound, the biology of whales and fish, the ocean environments, and scientific instruments all play a role in this problem.


### How and when do orcas use sound?
Killer whales are toothed whales (odontocetes) that use sound to communicate with each other and find food in the ocean. There are two types of killer whales living on the west coast of the north American continent: the ["resident" and the "transient"](REF) killer whales.

Resident killer whales typically hang out in coastal waters and primary feed on fish, such as salmon. Since many fish don't make sound, whales produce impulsive and directional sounds (the ["clicks"](REF)) and use the returning echoes to find, track, and catch the fish. This is a special sensing modality called "echolocation," which is also used by all toothed whales and most bats. 

<!-- In this case, these fish species don't hear sounds produced by the killer whales because that is beyond their hearing range. However, note that this is not always true, as there are fish species with specialized high frequency hearing capability that can hear sounds above 20 kHz (which is considered "ultrasonic" for humans). -->

Transient killer whales, on the other hand, rely on both listening and echolocation to hunt marine mammals, such as seals. Since seals use sound to communicate and hear well underwater, transient killer whales eavesdrop on seal vocalizations to detect and localize them, then switch to intensive echolocation clicks during active pursuits.

Both resident and transient killer whales use a rich repertoire of sounds to communicate. Research has shown that killer whales in matrilineal groups centered around related females (the "pods") have [distinct call patterns](https://orca.research.sfu.ca/call-library). This allows us to acoustically infer their group identity, which is really useful in studying these fully aquatic mammals.

### How do we use ocean acoustics techniques to study orca?
Given killer whales' extensive use of sound in communication and foraging, we can leverage hydrophones to detect their presence, identify the groups, and infer their activities (e.g., feeding or socializing). As each hydrophone has a limited effective listening range, we can use a network of hydropohones to monitor whales over a larger special area. This is precisely what [Orcasound](https://www.orcasound.net/) is doing in the northeast Pacific Ocean. 

<!-- One can also use multiple closely spaced hydrophones to accurately localize the whales. -->

Scientists attach small electronic "tags" equipped with hydrophones and other sensors to whales. These tags record the sounds whales produce and hear, alongside their movements, offering a perspective from the whale's point of view. For example, an [echogram](REF) like below visually depicts what the whale may be hearing in terms of echoes when closing in on a prey item.

Knowing all the above, we can start to ask questions like:
- How far can killer whales hear each other? How far can we detect them using hydrophones? Does this distance change depending on the type of sound whales emit?
- How do whales identify different fish species through echolocation? How do echoes change with fish size or when there are multiple fish?
- What makes a good hydrophone to detect the whales? What key characteristics should we consider?

Below, we will introduce the mighty "SONAR equation" to help us answer these questions.


<!-- 
- other examples
    - blue whales communicate across ocean basin
    - humpback whales cultural transmission of call units
 -->




(conceptual-sonar_equation)=
## The mighty SONAR equation

The Sonar Equation provides a framework for understanding the different components involved in either **pure listening** or **active pinging (echolocation)** using sound. The term **SONAR** stands for **SO**und **N**avigation **A**nd **R**anging.

In pure listening scenarios, the sonar equation is written as:

$$
RL = SL - TL,
$$

and in the active sensing scenario, it is written as:

$$
RL = SL - 2 TL + TS
$$

where:
- $RL$ denotes receive level, or the strength of the received sound
- $SL$ denotes source level, or the intensity of the emitted sound
- $TL$ denotes transmission loss, or the attenuation of sound as it travels
- $TS$ denotes target strength, or the acoustic reflectivity of the target

You may find variations of the sonar equation that include additional terms, such as noise level ($NL$), array gain ($AG$), or directivity index ($DI$), as seen on the [DOSITS](https://dosits.org/science/advanced-topics/sonar-equation/) website. These variations arise from the specific problem setup and the instrumentation used.

In the following tutorials, we will break down these key terms above and explore how they are used to understand ocean acoustics problems.

But first, let's see how we can use the SONAR equation to help us break down the complex problem of studying the lives of orcas using sound.

`````{Tip}
:class: tip
Discovery of Sound in the Sea (DOSITS) contains a wealth of information about ocean acoustics!
`````





## The lives of orcas through the SONAR equation
<!-- 
- How far can killer whales hear each other? How far can we detect them using hydrophones? Does this distance change depending on the type of sound whales emit?
- How do whales identify different fish species through echolocation? How do echoes change with fish size or when there are multiple fish?
- What makes a good hydrophone to detect the whales? What key characteristics should we consider?
-->

We first consider the scenario of Oli trying to communicate with Ola, and examine how different terms in the SONAR equation come into play:

ADD PICTURE

You can see here that $\textrm{SL}$ characterizes how loud Oli is calling, $\textrm{TL}$ describes how much sound energy is "lost" before the sound reaches Ola, and $\textrm{RL}$ represents how loud the sound is when Ola receives. Depending on what the environment Oli and Ola are in, the content of Oli's signal (e.g., spectrum), Ola may or may not be able to hear Oli, or hear clearly what Oli is saying.

For example, if they are in a shallow channel, Oli's sound may bounce around between the sea surface and seafloor ("multipath" propagation) and cause Ola to hear multiple copies of the same sound. It also turns out that Oli's sound may not reach as far in warmer water compared to in colder water. You will learn more about these in the following sections.

<!-- One can imagine that the ambient noise can affect this too. -->

What if we want to predict how far we can detect Oli? It's pretty straightforward: just replace Ola with a hydrophone:

ADD PICTURE

But of course, we need to consider if Ola and the hydrophone receives sound the same way, just like different people may hear the same sound differently.

Now let's consider the scenario where Ola wants to detect and track down a fish. The picture then changes to the following:

ADD PICTURE

In this case, instead of Oli making a sound, now we have Ola's echolocation signal bouncing off the fish, characterized by $\textrm{TS}$. Because the sound now travels both from Ola to the fish, and from the fish to Ola, the amount of sound energy loss doubles, represented by $\textrm{2TL}$. Similarly, depending on the environment Ola is in and the type and number of fish there are, the exact situation may be more complex then what is depicted here. You will also learn more about these in the following sections.



### Widget exercise

Let's put what we just learn to use! Below is an interactive "widget" that you can use to get an intuitive sense of how loud Oli's sound or fish echoes Ola may receive.

`````{Tip}
:class: tip
Throughout the tutorials, we will use widgets to help develop physical intuitions behind ocean acoustics problems.
`````

Here, all the numbers are represented in **decibels**, or "**dB**," which is a unitless, logarithmic measure widely used in ocean acoustics. We use the this measure in order to easily compare sound as loud as a jet taking off right outside of your window (~140 dB re 20 $\mu$Pa) with sound as soft as dropping a needle on the floor (~15 dB re 20 $\mu$Pa). Go to the [](primer-decibel) page to learn about this useful measure.

ADD_WIDGET:
- PASSIVE: RETURN RL FROM TL AND SL SLIDEBARS
- ACTIVE: RETURN RL FROM TL, SL, AND TS SLIDEBARS

**Try this for yourself:** By keeping $\textrm{TL}$ the same, you can see how much harder it is to hear fish echoes compared to Ola's sound, just because the sound needs to travel twice of the distance! Note that $\textrm{TL}$ is also typically a negative number when measured in decibel, which we will explain in [](conceptual-target_strength).



## How are these related to your own research?

### Exercise
1. How do we use echosounder to probe the environment?
    - what are the components in the sonar equation this maps to?
    - identify at least one possible research question can be answered from echosounder experiment and at least
    - identify at least one caveat associated with the approach
2. Mapping your research project onto the sonar equation
    - discuss which component your work falls into
    - what are the caveats?



(conceptual-overview-human)=
## How are these related to our daily lives?


We will also briefly introduce other examples of how the elements we consider here in ocean acoustics are related to our daily lives.


Even though we do not live in an underwater environment, and as humans we typically rely predominantly on vision to navigate the world, sounds still play an important component of our daily lives. Listening is an important sensory modality for us to understand the environment. For example, we can usually tell how heavy the rain is by the sounds of raindrops hitting the windows; in a large and empty room, we often notice the presence of echoes of the sounds we make. Listening can also bring a powerful and emotional experience, as people who have attended concerts can attest to. In addition, many unsighted humans have also developed the ability to navigate by echolocation, just like the killer whales.

As humans, we have also developed technologies that use the same principles as echolocation to probe our environments. For example, we use radar systems, which transmit electromagnetic waves and receive the "echoes" bounced off objects in the air to detect and track airplanes, characterize weather phenomena including cloud cover, rain, snow, etc., and even observing the migration of large herds of birds in the night sky. We also use medical ultrasound to image the interior of human body as a non-invasive diagnostic tool.

The principles and elements we will learn from the section about the sonar quation can also be applied in these cases to understand our experiences of listening to sounds in our surrounding environment and these technologies.
