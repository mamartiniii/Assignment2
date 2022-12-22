clear
close all
clc


% here same values for the mesh

% 1) only general mesh, triangles, 1.5e-2 m
% 2) 1 + BOI, 
% 3) 2 + edge siying sui profili
% 4) 3 + inflations sui profili
% 5) 4 + TE con almeno 3 elemnti
% 6) 5+ inflation anche a terra
%          [  17204 , 36990, 38459,  44419,45344,  45688,            126743,     151931, 194262 ];
nodevect = [  17204 , 36990, 38459,  44419,45344, 45688,83151, NaN     , 109305,126743,151931, 194262 ];
%           33786, 73030, 75714,  80884, 82254,  82597       ,177839,        237054, 287003, 376706 ];
cellvect = [33786, 73030, 75714,  80884, 82254,  82597,149273,177839,200670, 237054, 287003, 376706 ];


% here the resulting L

Lvect = [-1032.4772,-994.38993, -1092.0724, -891.8709, -939.5914, -967.30767,-887.98819,-920.01458,-834.17125, -885.49014, -852.89616, -785.79535];
Lvect = -Lvect;

% the resulting D


Dvect = [82.977025, 69.905875,70.845264, 70.963054, 68.393482, 70.88693,67.915589, 68.846677,66.110558,66.302321,64.259743, 62.643695];


ratio = Lvect./Dvect;

figure
plot(cellvect, ratio, 'o', "LineWidth",3)
grid on
xlabel("n mesh cells")
ylabel("cL/cD")