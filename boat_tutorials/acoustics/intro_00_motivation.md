(acoustics-intro)=
# Conceptual framework

In this tutorial, we will develop a solid understanding of how to breakdown an ocean acoustics problem into distinct components that can each be analyzed separately. This "systems" approach provides a structured framework that will help us gain a holistic picture of the problem.




## Learning goals

Taking a systems approach to understanding ocean acoustics problems, our goals are to be able to:
1. Identify key components of the **system** underlying the problem
2. Analyze the relationships of different components within the system
3. Differentiate known and unknown components
4. Assess what can be realistically achieved when characterizing the unknowns
5. Recognize potential caveats in the measurement, inference, or estimation processes




(acoustics-intro_motivation)=
## Motivating example: The acoustic lives of the orcas

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

EMBED SPECTROGRAM EXAMPLE WITH SOUND
LINK TO SPECTRAL ANALYSIS PAGE
<!-- One can also use multiple closely spaced hydrophones to accurately localize the whales. -->

Scientists attach small electronic "tags" equipped with hydrophones and other sensors to whales. These tags record the sounds whales produce and hear, alongside their movements, offering a perspective from the whale's point of view. For example, an [echogram](REF) like below visually depicts what the whale may be hearing in the echoes when closing in on a prey item.

ADD CLICK ECHOGRAM

Knowing all the above, we can start to ask questions like:
- How far can killer whales hear each other? How far can we detect them using hydrophones? Does this distance change depending on the type of sound whales emit?
- How do whales identify different fish species through echolocation? How do echoes change with fish size or when there are multiple fish?
- What makes a good hydrophone to detect the whales? What key characteristics should we consider?

Next, we will introduce the mighty "SONAR equation" to help us answer these questions.


<!-- 
- other examples
    - blue whales communicate across ocean basin
    - humpback whales cultural transmission of call units
 -->
