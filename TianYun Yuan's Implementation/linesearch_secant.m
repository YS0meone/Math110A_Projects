function alpha = linesearch_secant(grad, x_cur, d)
%% grad denotes the gradient of the function in SGD
%% x_cur denotes the starting point of the linesearch
g = @(a) d' * grad(x_cur + a*d);
%% we want to find the root of g using secant method
a_cur = 0.001;
a_prev = 0;
max_iter = 1000;
e = 10^(-4);
i = 0;
g_zero = g(0);
g_cur = g(0.001);
g_prev = g(0);
while abs(g_cur) > e * abs(g_zero)
    alpha = (g_cur*a_prev - g_prev*a_cur)/(g_cur-g_prev);
    a_prev = a_cur;
    a_cur = alpha;
    g_prev = g_cur;
    g_cur = g(a_cur);
    i = i + 1;
    if (i > max_iter)
        disp("LineSearch: Exceed maximum number of iteration!")
        break;
    end
end

