z=Newton(2+2i);
f=[1 0 0 -1];
z_ast=roots(f)
plot(z,'x');
hold on;
plot(z_ast,'o');
hold off;
saveas(gcf,'graph8_1_2.png');