%% 2020741030 박기정
clc, clear;
close all;

s = tf('s');

%Define Plant
G = 0.03 / (0.001*s^2 + 1.00003*s + 0.0309);

step(G);   %Plot Step Response