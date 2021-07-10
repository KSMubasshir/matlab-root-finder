function [root,iter]=false_position_method_1505041(func,xl,xu,es,maxit)

iter = 0;
xr = xl;

while (1)
    xrold = xr;
    % xrbisection = (xl + xu)/2;
    % xrfalseposition=(xl*func(xu)-xu*func(xl))/(func(xu)-func(xl));
    % xr=min(xrbisection,xrfalseposition);
    xr=(xl*func(xu)-xu*func(xl))/(func(xu)-func(xl));
    iter = iter + 1;
    if xr ~= 0
        ea = abs((xr - xrold)/xr) * 100;
    end
    test = func(xl)*func(xr);
    if test < 0
        xu = xr;
    elseif test > 0
        xl = xr;
    else ea = 0;
    end
    if ea <= es||iter>=maxit
        break
    end
end

root = xr;

end