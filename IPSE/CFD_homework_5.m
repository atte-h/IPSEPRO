clear all; close all; clc
% Finite Volume method for diffusion
% Homework 5 

% The shaftis insulatedand heatconductivityis 1000 W/mk
% Cross section area is 0,01 m^2 
% Length of the shaft 1 m

k = 1000 % [W/mK]
A_cross = 0.01 % [m^2]
L = 1 % [m]
T_a = 100 + 273 % [K]
T_b = 500 + 273 % [K]
% Solve temperaturefield numerically using Finite Volume Method
% Let's divide saft to 5 pieces. 
deltaX = L/5 
deltaX_b = deltaX/2


A= [-3 1 0 0 0;
    1 -2 1 0 0;
    0 1 -2 1 0;
    0 0 1 -2 1;
    0 0 0 1 -3
    ]
b= [-2*T_a 0 0 0 -2*T_b]'

S_kelvin = inv(A)*b
S_celsius = S_kelvin-273


% 