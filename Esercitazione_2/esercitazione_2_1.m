clear all
close all
clc

xx1 = 1:5;
xx2 = linspace(1,5,10);

yy1 = xx1.^2;
yy2 = xx2.^2;

%% grafico

plot(xx1,yy1,'linewidth',2,'displayname','f1')
hold on
plot(xx2,yy2,'linewidth',2,'displayname','f2')
legend('location','best')
xlabel('x')
ylabel('y')
ax=gca;
ax.FontSize=12;
grid on

%% Area metodo dei trapezi

Area1 = trapz(xx1,yy1)
Area2 = trapz(xx2,yy2)