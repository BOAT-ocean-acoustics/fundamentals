function Gauss_pulse = Gaussian_pulse_propagation(p,t1,tv,f,tau)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Gauss_pulse = (abs(p).*sin(2*pi*f*(t1 - tv) + angle(p)));

Gauss_pulse = Gauss_pulse.*exp(-((t1 - tv)/tau).^2);


end