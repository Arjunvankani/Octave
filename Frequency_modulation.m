clc; clear all; close all;

ROWS = 3; % Subplot ROWS
COLS = 1; % Subplot COLS

t = linspace(0, 1, 500); % Time

function sig = SignalGen(am, theta)

sig = am * sin(theta);

endfunction


fm = 5; % Mesage frequency in Hz
Am = 1; % Mesage amplitude
thetaM = 2 * pi * fm * t; % Theta argument for SignalGen

m = SignalGen(Am, thetaM); % Message signal


subplot(ROWS, COLS, 1);
plot(t, m,'g');
title("Message Signal");


fc = 30; % Carrier frequency in Hz
Ac = 1; % Carrier Amplitude
thetaC = 2 * pi * fc * t; % Theta argument for SignalGen

c = SignalGen(Ac, thetaC); % Carrier signal

subplot(ROWS, COLS, 2);
plot(t, c,'r');
title("Carrier Signal");



beta = 2.8*fc / fc; % beta = del f / fm

thetaMod = thetaC + (beta*m);

x = SignalGen(Ac, thetaMod); % Modulated signal

subplot(ROWS, COLS, 3);
plot(t, x,'y');
title("Modulated Signal");
