%% Overlying water information

f = 400000; % Frequency (Hz)
cw = 1500; % Water Sound Speed (m/s)
rhow = 1; % Water Density (g/cm^3)

%% Sediment properties

cp1 = 1490; % Sediment Sound Speed (m/s); Range of values: [1450 1750];
rhop1 = 1.4; % Sediment Density (g/cm^3); Range of values: [1.1 2.5];
alphap1 = 20; % Sediment Attenuation (dB/m); Range of values: [20 650];

%% Compute reflection coefficient

theta_i_degrees = 0:0.25:90; % Grazing angles for reflection coefficient

R1 = RCoeff(f, theta_i_degrees, cw, cp1, rhop1/rhow, rhow, alphap1); % Function to generate reflection coefficient

%% Determine critical angle or intromission angle

if cp1 > cw % Critical angle existance condition
    crit_angle = acos(cw/cp1)*180/pi; % critical angle calc.
    disp_angle = crit_angle;
    lineColor = 'red';
    annoteText = 'Critical Angle';
else % if cp1 < cw, an angle of intromission exists
    intro_angle = acos(sqrt(((rhop1/rhow)^2 - (cw/cp1)^2)/((rhop1/rhow)^2 - 1)))*180/pi; % intromission angle calc.
    disp_angle = intro_angle;
    lineColor = 'black';
    annoteText = 'Intromission Angle';
end

%% Plot the magnitude of the Reflection Coefficient

figure(1)
plot(theta_i_degrees,abs(R1),'linewidth',2)

a1 = gca;
a1.XLabel.String = 'Grazing Angle (degrees)';
a1.YLabel.String = 'Magnitude of Reflection Coefficient';
grid on

% Display line showing either the critical angle or the intromission angle
line([disp_angle disp_angle],a1.YLim,'linewidth',2,'Color',lineColor)
text(disp_angle+2,0.95,annoteText,'Color',lineColor)

%% Plot the phase of the Reflection Coefficient

RCAngle = angle(R1); % Get phase from complex reflection coefficient
RCAngle(1) = sign(RCAngle(2)).*RCAngle(1); % correct unwrapping issue

figure(2)
plot(theta_i_degrees,RCAngle,'linewidth',2)

a2 = gca;
a2.XLabel.String = 'Grazing Angle (degrees)';
a2.YLabel.String = 'Phase of Reflection Coefficient';
grid on

% Display line showing either the critical angle or the intromission angle
line([disp_angle disp_angle],a2.YLim,'linewidth',2,'Color',lineColor)