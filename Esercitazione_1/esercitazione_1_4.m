clear all
close all
clc


MM = eye(4);
MM(5:8, :) = diag(zeros(4))+diag(10*ones(1,3),-1)+diag(logspace(3,9,3),1)+diag(2:3,2);
MM(1,end) = 1;
MM(1:4, 5:8) = MM(5:8, 1:4)';
MM(5:8, 5:8) = ones(4,4) + diag(2*ones(4));

%%

AA = sum(MM(:,2:2:end));

%%

BB = sum(MM(1:2:end,:),2);

%%

CC = sum(diag(MM));

%%

% a quanto pare non funzione DD = sum(diag(MM,-4:2:4))
% Matlab di merda

DD = sum(diag(MM,-4))+sum(diag(MM,-2))+sum(diag(MM))+sum(diag(MM,2))+sum(diag(MM,4));
sum(diag(MM,-6))+sum(diag(MM,-4))+sum(diag(MM,-2))+sum(diag(MM,0))+sum(diag(MM,2))+sum(diag(MM,4))+sum(diag(MM,6));

%%

% find(MM==1) = -1 sbagliato perchè non me li deve restituire come vettore
% ma devo sostituirli
MM(MM==1) = -1;

%%

MM(MM>=0 & MM<=10) = 3