function [root,iter]=bisect_1505041(func,xl,xu,es)

iter = 0; xr = xl; ea = 100;

while (1)
    xrold = xr;
    xr = (xl + xu)/2;
    iter = iter + 1;
    if xr ~= 0,ea = abs((xr - xrold)/xr) * 100;
    end
    test = func(xl)*func(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else ea = 0;
    end
    if ea <= es
        break
    end
end

root = xr;

end