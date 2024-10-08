xvector=-5:0.01:5; %più ne metto, più le linee sono dritte

pluto = @(xx) -2.*(xx>=-4&xx<-2) + 1.*(xx>=-2&xx<0)...
    -1.*(xx>=0&xx<2) + 2.*(xx>=2&xx<4);
pippo = @(xx) -2*(xx>=4) + 3*(xx>=2) -2*(xx>=0) + 3*(xx>=2) -2*(xx>=4);

% yvector = pluto(xvector);
yvector = pippo(xvector);

plot(xvector, yvector, 'LineWidth', 3)
grid on
ylim([-3 3])
xlabel('X [-]')
ylabel('Y [-]')
grid on
ax=gca;
ax.FontSize=14;
%box on serve per costruire una scatola di assi, ovvero mette anche quelli
%sopra e a sinistra

hold on
yvector1 = funz_es2 (xvector);
plot(xvector, yvector, 'r--', 'LineWidth', 3)
legend('Funzione anonima', 'Funzione Script', 'Location', "best")