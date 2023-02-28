clear, clc
x = [4,5,1];grad = @func_deriv;ep = 1e-6;
x_star = GD_secant(grad,x,ep);
disp(func(x_star))

x = [-2,2];grad = @Rosenbrock_grad; ep = 1e-4;
x_star = GD_secant(grad,x,ep);
disp(x_star)