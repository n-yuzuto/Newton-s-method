m=30;
x=linspace(-4,4,m);
y=linspace(-5,5,m);
p=[3 0 0 -1];
z_ast=roots(p);
for k=1:m
    b(k)=1i*y(k);
    z0(k)=x(k)+b(k);
    z=Newton(z0(k));
    zz(k)=z(end);
end
for k=1:m
    if (abs(zz(k)-z_ast(1)) ...
    <abs(zz(k)-z_ast(2)) ...
    &&abs(zz(k)-z_ast(1))<abs(zz(k)-z_ast(3)))
    
    index(k)=1;
    
elseif abs(zz(k)-z_ast(2))<abs(zz(k)-z_ast(3))
    
    index(k)=2;
    
else
    index(k)=3;
    end
end
real_z=x;
imag_z=y;
scatter(x,y,[],index);
saveas(gcf,'graph8_2_2.png');
