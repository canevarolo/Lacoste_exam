clear all
close all
clc

diag_0 = linspace(-12,3,4);
diag_meno2 = [3 4];
diag_meno1 = linspace(pi/2,3*pi/2,3);
diag_1 = linspace(3*pi/2,5*pi/2,3);
diag_2 = [-2 -1];
QQ = diag(diag_0,0) + diag(diag_meno1,-1) + diag(diag_meno2,-2) + diag(diag_1,1) + diag(diag_2,2);
QQ(end,end) = 1;

%%

QQ(:,end) = QQ(:,1);

%%

QQ(:,3) = QQ(2,:);

%%

NN(:,1) = QQ(1,:);
NN(:,2) = QQ(:,2)

% Soluzione docente
% tic
% NN=[QQ(1,:)' QQ(:,2)];
% t1=toc;
% tic
% PP=zeros(4,2);
% PP(:,1)=QQ(1,:);
% PP(:,2)=QQ(:,2)
% t2=toc;

%%

KK = QQ\NN