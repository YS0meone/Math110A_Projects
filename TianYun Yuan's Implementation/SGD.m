function x_star = SGD(x0, df, linesearch, e)
%% f is scalar function that the vectors with the same size as x0
%% df takes vectors with the same size as x0 and return a vector with
%% the same size
x_cur = x0;
max_iter = 10000;
i = 0;
while norm(df(x_cur)) > e
    alpha = linesearch(df, x_cur, -df(x_cur));
    x_star = x_cur - alpha*df(x_cur);
    x_cur = x_star;
    i = i + 1;
    if (i > max_iter)
        disp("SGD: Exceed maximum number of iteration!")
        break;
    end
end
end