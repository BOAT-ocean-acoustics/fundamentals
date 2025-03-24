# Tech sheet exercise:

Uses: 
- [Technical Specs for the Nortek Sig100](https://www.nortekgroup.com/products/signature100/pdf)
- [Assembly drawing for the Sig100](https://www.nortekgroup.com/assets/documents/NGA061-007....Rev.A...Signature-100-General-Assembly.pdf)

Questions: 
1. If we want to use the echosounder option on the Nortek Signature 100, at what frequencies can we use the echosounder?
2. What types of signals can we transmit?
3. What is the beamwidth of the echosounder the measurement frequencies?
4. How is the beamwidth measured i.e. is it at the 3dB down points? 6 dB down? 10 dB down?
	- Could we use the our widget to figure this out if we knew the transducer radius?
		- From the assembly drawing, the diameter is 11.6 cm, so the radius is 5.8 cm.
5. Given the frequency and radius of the transducer, where do we transition from the near-field to the far-field of the transducer.
	- Use the simple relationships in SL_3_Near_Field_and_Source_Level.ipynb or the widget. Are there differences?
6. What's the source level? Will we be able to relate the signals measured with the echosounder to the RL? (I think we are going to need to calibrate)
		
		
