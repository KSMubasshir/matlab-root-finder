f=@(x) ...
    ((x./(1-x)).*(6./(2+x)).^0.5)-0.05;
[root,iter]=false_position_method_1505041(f,0.025,0.03,0.005,100);
disp('Using False Position')
disp('Root')
disp(root)
disp('Iter')
disp(iter)



[root,iter]=secant_method_1505041(f,0.025,0.03,0.005,100);
disp('Using Secant Method')
disp('Root')
disp(root)
disp('Iter')
disp(iter)

