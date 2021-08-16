clc; clear all; close all;

pkg load signal
pkg load control


ROWS = 3; % Subplot ROWS
COLS = 1; % Subplot COLS

t = linspace(0, 1, 500); % Time



function sig = SignalGen(am, theta)

sig = am * sin(theta);

endfunction

fm = 2; % Mesage frequency in Hz
Am = 1; % Mesage amplitude
thetaM = 2 * pi * fm * t; % Theta argument for SignalGen

m = Am*square(2*pi*fm*t); % Message signal

subplot(ROWS, COLS, 1);
plot(t, m);
title("Message Signal");


fc = 20; % Carrier frequency in Hz
Ac = 1; % Carrier Amplitude
thetaC = 2 * pi * fc * t; % Theta argument for SignalGen

c = SignalGen(Ac, thetaC); % Carrier signal

subplot(ROWS, COLS, 2);
plot(t, c,'g');
title("Carrier Signal");


beta = 2*fc / fc; % beta = del f / fm

thetaMod = thetaC + (beta*m);

x = SignalGen(Ac, thetaMod); % Modulated signal

subplot(ROWS, COLS, 3);
plot(t, x, t, m, 'r');
title("Modulated Signal");
