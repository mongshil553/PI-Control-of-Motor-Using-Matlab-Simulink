%% 2020741030 박기정
clc, clear;
close all;

s = tf('s');

%Define Plt
G = 0.03 / (0.001*s^2 + 1.00003*s + 0.0309);

ssG = s^2 * G;

sys = tf(ssG); %Create Transfer FUnction object
step(sys);   %Plot Step Response