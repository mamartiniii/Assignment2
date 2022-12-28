clear
close all
clc

c = 0.38;
shift = 0.017366;
%q = 551.625;  % Pa
q = 1/2*30*30*1.225;

h_vect = [0.036366;
    0.037506;
    0.047386;
    0.057266;
    0.067526;
    0.077406;
    0.097546;
    0.117306;
    0.167466;
    0.242326;
    0.765966];
%% h_c = (h_c * c) + shift;

h_c_vect = (h_vect - shift)/c;  %h/c as in the paper


cL_mesh_fine = - [-2.6464, -2.7073, -3.28, -4.0617, -4.3147, -4.3173, -4.0746, -3.7679, -3.1951];

load("cL_high_paper.mat");
figure

plot(output(:,1), output(:,2), 'ko-', h_c_vect(1:length(cL_mesh_fine)), cL_mesh_fine, 'ro-', "LineWidth",2)
legend("From paper (experimental)", "from CFD simulation")
xlim([0, 0.4])
grid on
xlabel("h/c")
ylabel("cL")

