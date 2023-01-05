clc
close all 
clear

c=0.2234;
T1_1=readtable("cp_0330_1");
cp1_1=table2array(T1_1);
T1_2=readtable("cp_0330_2");
cp1_2=table2array(T1_2);
T1_3=readtable("cp_0330_3");
cp1_3=table2array(T1_3);

figure
plot(cp1_1(:,1)/c,cp1_1(:,2),'b','Linewidth',3)
hold on 
plot(cp1_2(:,1)/c,cp1_2(:,2),'b','Linewidth',3)
plot(cp1_3(:,1)/c,cp1_3(:,2),'b','Linewidth',3)
xlabel('x','Interpreter','latex')
ylabel('$c_p$','Interpreter','latex')
set(gca,'FontSize',14)
grid on
xlim([0 1])
%%

T2_1=readtable("cp_2430_1");
cp2_1=table2array(T2_1);
T2_2=readtable("cp_2430_2");
cp2_2=table2array(T2_2);
T2_3=readtable("cp_2430_3");
cp2_3=table2array(T2_3);

figure
plot(cp2_1(:,1)/c,cp2_1(:,2),'b','Linewidth',3)
hold on 
plot(cp2_2(:,1)/c,cp2_2(:,2),'b','Linewidth',3)
plot(cp2_3(:,1)/c,cp2_3(:,2),'b','Linewidth',3)
xlabel('x','Interpreter','latex')
ylabel('$c_p$','Interpreter','latex')
set(gca,'FontSize',14)
grid on
xlim([0 1])