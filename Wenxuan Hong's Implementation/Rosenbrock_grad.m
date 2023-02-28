function [fd] = Rosenbrock_grad(x)
fd = zeros(1,2);
fd(1) = 400*x(1)^3 + (2-400*x(2))*x(1)-2;
fd(2) = 200*(x(2)-x(1)^2);
end