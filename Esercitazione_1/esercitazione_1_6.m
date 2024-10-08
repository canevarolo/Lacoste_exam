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

for ii = 1:length(QQ)
    QQ(ii,ii) = 10;
end

%% senza contare le iterazioni

while QQ(2,1) < QQ(1,1)
    QQ(2,1) = QQ(2,1) + 1;
end