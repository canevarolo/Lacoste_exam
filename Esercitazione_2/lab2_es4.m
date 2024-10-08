xx = linspace (0, 10, 100);
yy = xx;

[XX, YY] = meshgrid(xx, yy);

ff = cos(XX) + sin(YY);

surf (XX, YY, ff)
%contourf (XX, YY, ff)