clear all
close all
clc

AA = [2 3 4 5; 0 2 6 0; 0 0 2 9; 0.5 1 1.5 2];

%%

BB(1,:) = max(AA,[],1);
BB(2,:) = min(AA,[],2);
% oppure nel secondo caso anche BB(2,:) = min(AA)

%%

CC = find(BB);

%%

DD = AA*BB';

%%

EE = AA\BB';

%%

FF_1 = AA^2; % dimensioni compatibili, matrice al quadrato
FF_2 = AA.^2; % elementi della matrice al quadrato

%%

AA(find(AA<=3)) = 4