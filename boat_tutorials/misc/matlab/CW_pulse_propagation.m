function CW_pulse = CW_pulse_propagation(p,t1,tv,f,tau,win)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
CW_pulse = p.*exp(-1i*(2*pi*f*t1 - pi/2));

ind1 = (t1 - tv) >= 0 & (t1 - tv) <= tau;

CW_pulse((t1 - tv) < 0) = 0;
CW_pulse((t1 - tv) > tau) = 0;


CW_pulse(ind1) = CW_pulse(ind1).*tukeywin(length(find(ind1)),win).';

end