% esercizio 2
% Rappresentare la funzione f(x,y)=ax^2-x, in cui  è un vettore scalare,
% testandola in un dominio 1:4, e in un range del valore a [−1,1],
% rappresentando la funzione per 6 valori di a in un singolo plot e in
% due subplot/tile separati, aggiornando la legenda della figura in
% automatico. 

% Facciamo il subplot, singolo plot

clear all
close all
clc

xx = [1 4]
aa = linspace(-1,1,6)

%% Realizzo la funzione

f1 = figure(1)
for ii = 1:length(aa)
    yy = aa(ii)*xx.^2 - xx;
    plot(pp,ff,'linewidth',2,'displayname',['a = ' num2str(aa(ii))])
    hold on
    grid on
    box on
    legend('location','northeastoutside')
end

xlabel('x [-]')
ylabel('y [-]')
ax=gca;
ax.FontSize=16;

figure 