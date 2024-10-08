clear all
close all
clc

% AA = [2 4 6 8]
% BB = [1e2 1e5 1e8 1e11]
% oppure, meglio

AA = linspace(2,8,4);
BB = logspace (2,11,4);

%%
CC = log10(BB);

%%
DD = [AA; CC];
% oppure, in alternativa
% DD(1,:) = AA;
% DD(2,:) = CC
rr = size (DD,1);
cc = size (DD,2);

%%
DD(3,:) = 3*ones(1,cc);
DD(4,:) = zeros(1,cc);
% oppure
% DD(3,:) = 3*ones(1,lenght(DD));
% DD(4,:) = zeros(1,lenght(DD))

%%
QQ = DD*DD';
RR = sum(QQ,1)
KK = sum(QQ,2)
TT = [find(RR); find(KK<100)]