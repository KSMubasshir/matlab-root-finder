function [root,iter]=secant_method_1505041(func,first_guess,second_guess,es,maxit)
iter = 0;
x0=first_guess;
x1=second_guess;
while (1)
    %xrold = xr;
    x2= x1 - ((func(x1)*(x0-x1))/(func(x0)-func(x1)));
    iter = iter + 1;
    if x2 ~= 0,
        ea = abs((x2 - x1)/x2) * 100;
    end
    if ea <= es || iter >= maxit,
        break,
    end
    x0=x1;
    x1=x2;
end
root = x2;