clear all
close all
clc

xx = linspace (0,10,100);
yy1 = xx.^2 - xx + 1;
yy2 = exp(xx);

% non funziona plot (xx,yy1) 
% hold on 
% plot (xx,yy2)

%% lavoro sull'asse di sinistra

yyaxis left
grid on
box on
plot(xx,yy1,'linewidth',2,'markerfacecolor', 'y')
xlabel('x lunghezza [mm]')
ylabel('y Temperatura [°C]')
set(gca,'fontsize',16)

%% lavoro sull'asse di destra

yyaxis right
plot(xx,yy2,'linewidth',2,'markerfacecolor', 'r')
ylabel('y Potenza termica [W]')
set(gca,'fontsize',16)