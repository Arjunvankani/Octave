clc; clear all; close all;

ROWS = 3; % Subplot ROWS
COLS = 1; % Subplot COLS

t = linspace(0, 1, 500); % Time


fm = 2; % Mesage frequency in Hz
Am = 1; % Mesage amplitude

m = Am * sin(2*pi*fm*t); % Message signal

subplot(ROWS, COLS, 1);
plot(t, m,'g');
title("Message Signal");

fc = 100; % Carrier frequency in Hz
Ac = 1; % Carrier Amplitude

c = sin(2*pi*fc*t); % Carrier signal

subplot(ROWS, COLS, 2);
plot(t, c,'r');
title("Carrier Signal");

ka = .9; 

x = (1 + m * ka) .* c; % Modulated signal

subplot(ROWS, COLS, 3);
plot(t, x,'y');
title("Modulated Signal");
