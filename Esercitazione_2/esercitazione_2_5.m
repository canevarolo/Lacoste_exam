clear all
close all
clc

nn=logspace(1,4,4);

ii=1;
for xx = linspace(0,10,nn(ii));
yy = xx;
[XX YY] = meshgrid(xx,yy);
ff = 2*XX + YY
end

%%

f11 = figure(1)
surf(XX,YY,ff)

xlabel('x (cm)')
ylabel('y (cm)')
zlabel('f(x,y) (-)')
colorbar


f12 = figure(2)
contourf(XX,YY,ff)

xlabel('x (cm)')
ylabel('y (cm)')
colorbar

%%

f21 = figure(3)
surf(XX,YY,ff)

xlabel('x (cm)')
ylabel('y (cm)')
zlabel('f(x,y) (-)')
colorbar


f22 = figure(4)
contourf(XX,YY,ff)

xlabel('x (cm)')
ylabel('y (cm)')
colorbar