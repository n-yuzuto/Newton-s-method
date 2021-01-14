function [z] = Newton(z0)
f = [1 0 0 -1];
diff_f = [3 0 0];
z(1) = z0;
for k = 1:100000
    z(k + 1) = z(k) - (polyval(f,z(k))/polyval(diff_f,z(k)));
    if(abs(polyval(f,z(k+1))) < 10^-5)
        break;
    end
end
end
