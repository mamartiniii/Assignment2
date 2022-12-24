clear
close all
clc

%% Trying to use quadrilaterals

nodenvect = [ 81159, 130018];
cellvect = [80249,128943];

% here the resulting L

Lvect = [-911.44219, -880.57396];
Lvect = -Lvect;

% the resulting D


Dvect = [68.284475, 65.83036 ];


ratio = Lvect./Dvect;

figure
plot(cellvect, ratio, 'o', "LineWidth",3)
grid on
xlabel("n mesh cells")
ylabel("cL/cD")