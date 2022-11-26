clc
clear 

T=readtable("coordinates_ready.txt");
aaa=table2array(T)
% z=table(zeros(88,1));
% T
% H=[T z];
% writetable(H,'coordinates_ready_z_try.txt')
figure
plot(aaa(:,3),(aaa(:,4)),'o')
a=atan(8/131)*180/pi
