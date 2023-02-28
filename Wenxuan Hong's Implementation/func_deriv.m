function [fd] = func_deriv(x)
fd = zeros(1,3);
fd(1) = 4*(x(1)-4)^3;
fd(2) = 2*(x(2)-3);
fd(3) = 16*(x(3)+5)^3;
end