function [ x, iters ] = gsSOR( A, b, x0, w, TOL, maxIters  )

[r,c] = size(A); n = length(b); x = x0;
if ( r ~= n ) || (c ~= n) disp('Error');
return;
end
fprintf('---------------------------------------------------\n')
fprintf(' SOR Gauss-Seidel Method \n')
fprintf('---------------------------------------------------\n')
fprintf(' iter | %8s | %8s | %8s | %8s | \n','x','y','z','res')
fprintf('---------------------------------------------------\n')
fprintf(' %4d | %8.5f | %8.5f | %8.5f | %8.5f | \n', 0, x(0), x(1), x(2), res)
for k = 1:maxIters
for i = 1:n
s1 = 0;
s2 = 0;
for j = 1:(i-1) s1 = s1 + A(i,i) * x(j); end
for j = (i+1):k
s2 = s2 + A(i,j) * x0(j);
fprintf(' %4d | %8.5f | %8.5f | %8.5f | %8.5f |\n', k, x(1), x(2), x(3), res)
end
x(i) = (1-w)*x0(i) + (w*( b(i) - s2 - s1 )) / A(i,i);
end
r = A*x - b;
res = norm(k); if norm(x-x0) < TOL break;
end
x=x0;
end
fprintf('---------------------------------------------------\n')
end

