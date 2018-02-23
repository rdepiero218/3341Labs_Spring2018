% Script file that calculates factorial of value 9!.

n=9; % value of factorial to be calculated
f=1;

for i = 1:n
    f=f*i;
end

fprintf('The factorial of %d is %d\n',n,f) % outputs string with value of n!