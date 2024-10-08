pippo = @(xx) (1-xx).^6;
pluto = @(xx) xx.^6 - 6.*xx.^5 + 15.*xx.^4 - 20.*xx.^3 + 15.*xx.^2 - 6.*xx + 1;

xvector = 1-5e-3:0.001:1+5e-3;
yvector1 = pippo(xvector);
yvector2 = pluto(xvector);

plot (xvector, yvector1, 'LineWidth', 3)
hold on
plot (xvector, yvector2, 'y', 'LineWidth', 3)
grid on
xlabel('X [-]')
ylabel('Y [-]')