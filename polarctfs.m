function [ C,w ] = polarctfs( gt, T,N )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
syms t adel C
w0 = (2*pi)/T;

adel = 0; % Adel is the stationary phasor of the polar form fourier series
%which is x(t)
for k = -N : N
    w(k+N+1) = k*w0;
    C(k+N+1) = (1/T) * int(gt*exp(-1j*w(k+N+1)*t),t,-T/2,T/2);
    adel = adel + abs(C(k+N+1)) * cos(w(k+N+1)*t + angle(C(k+N+1)));  
end 

figure(2)
hold on
ezplot(adel)
pretty(C)
disp(w)
hold off
end

