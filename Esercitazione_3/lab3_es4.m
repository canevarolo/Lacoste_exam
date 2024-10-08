xvalues = -50:5:50;
accuratezza = 1e-14;
nn = length(xvalues);

for ii=1:nn
    yy(ii) = myexp(xvalues(ii), accuratezza);
end
yyvero = exp(xvalues);
rel_err = abs(yyvero-yy)./abs(yyvero);

figure
semilogy(xvalues, rel_err, 'rs-')
xlabel('X [-]')
ylabel('Relative Error [-]')
grid on



function pippo = myexp(xx, precis)

kk = 1;
nuovotermine = 1;
stima = 1;
diff = 10*precis;
while diff>precis
    nuovotermine = nuovotermine*xx/kk;
    stima = stima+ nuovotermine;
    diff = abs(nuovotermine)/abs(stima);
    kk=kk+1;
end
pippo = stima;
if xx<0
    pippo = 1/pippo;
end

end