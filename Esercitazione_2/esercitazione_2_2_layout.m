% esercizio 2
% Rappresentare la funzione f(x,y)=ax^2-x, in cui  è un vettore scalare,
% testandola in un dominio 1:4, e in un range del valore a [−1,1],
% rappresentando la funzione per 6 valori di a in un singolo plot e in
% due subplot/tile separati, aggiornando la legenda della figura in
% automatico. 

yy = aa*xx.^2 - xx;

% userò aa al posto di a

xx = 1:4;
aa = linspace(-1,1,6)