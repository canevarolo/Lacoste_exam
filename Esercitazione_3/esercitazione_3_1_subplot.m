xx = linspace(-2,2,50);

figure

yy = funz1(xx);

plot(xx,yy, 'r', 'LineWidth', 3)

xlabel('X [-]')
ylabel('Y [-]')
grid on
box on
ax=gca
ax.FontSize=16