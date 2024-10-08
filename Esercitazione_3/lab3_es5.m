clear all
close all
clc

P1 = [1, 2];
P2 = [2, 1];

xx1 = 1;
xx2 = 2;


variabili = [xx1 xx2];
risultato_1 = funzione_anonima (P1 (1), P1 (2))
risultato_2 = funzione_anonima (P2 (1), P2 (2))



%function_1 = @(xx1,xx2) [xx1 + xx2.^2; 4.*xx1 - 1./xx2]