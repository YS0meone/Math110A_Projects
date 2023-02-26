%% gradient function for rosenbrock's function
function v =grad_rosen(x)
v1 = 200*(x(2)-x(1)^2)*(-2*x(1)) - 2*(1-x(1));
v2 = 200*(x(2)-x(1)^2);
v = [v1, v2]';
end