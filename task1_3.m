z=Newton(2+2i);
p=[1 0 0 -1];
y=polyval(p,z);
semilogy(abs(y),'x-');
saveas(gcf,'graph8_1_3.png');