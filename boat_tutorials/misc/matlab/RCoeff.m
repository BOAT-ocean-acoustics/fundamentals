function R1 = RCoeff(f, theta_i_degrees, cw, cp1, rhoRatio, rhow, alphap1)

deltap1 = alphap1*cp1*log(10)/(40*pi*f); % Convert attenuation to loss parameter

theta_i = theta_i_degrees*pi/180; % Convert from degrees to radians

cpp = cp1./(1 + 1i*deltap1); % Complex sound speed

ap = cpp/cw; % ratio of sound speeds

zw = rhow*cw./sin(theta_i); % impedance for water

zp = rhoRatio*cpp./sqrt(1 - (ap*cos(theta_i)).^2); % impedance of sediment

zwp = zp./zw; % impedance ratio

R1 = (zwp - 1)./(zwp + 1); % reflection coefficient

end