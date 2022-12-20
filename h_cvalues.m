clear 
close all
clc

% Reference values 
c = 0.38;
shift = 0.017366;

h_c = [0.05
0.053
0.79
0.105
0.132
0.158
0.211
0.263
0.395
0.592
1.97];


h_c = (h_c * c) + shift;

