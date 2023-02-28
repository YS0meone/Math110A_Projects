function [x_star] = GD_secant(grad,x,ep)
for i = 1:5000
    d = -grad(x)';
    x = linesearch_secant(grad,x,d);
    %x = x - alpha*d';
    if norm(d) <= ep
        break
    end
end
x_star = x;
end