function [x_new] = linesearch_secant(grad,x,d)
xa = x; xb = xa + d'/norm(d); d_norm = norm(d);
for i = 1:100
fda = d'*(grad(xa)*d)/d_norm; fdb = d'*(grad(xb)*d)/d_norm; 
alpha = norm(xb-xa)/(norm(fdb)-norm(fda)); x_new = xb - alpha*fdb;
xa = xb; xb = x_new;
if abs(grad(x_new)*d) <= 0.01* abs(grad(x)*d)
    break
end
end
end