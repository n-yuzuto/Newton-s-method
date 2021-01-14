function index= Number(z0)
z=Newton(z0);
p=[1 0 0 -1];
z_ast=roots(p);
if (abs(z(end)-z_ast(1)) ...
    <abs(z(end)-z_ast(2)) ...
    &&abs(z(end)-z_ast(1))<abs(z(end)-z_ast(3)))
    
    index=1;
    
elseif abs(z(end)-z_ast(2))<abs(z(end)-z_ast(3))
    
    index=2;
    
else
    index=3;
end
