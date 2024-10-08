xvector = linspace(-2,2,50);

figure
subplot(2,2,1)

yvector = funz_es1(xvector);

plot(xvector,yvector, 'r', 'LineWidth', 3)
xlabel('X [-]')
ylabel('Y [-]')
grid on
box on
ax=gca;
ax.FontSize=16;

subplot(2,2,3);
yvector3 = funz_es1_loc(xvector);
plot(xvector, yvector,)