% Calculate factorials of several values of n

% Using a vector of values
fprintf('******************************************\n')
fprintf('In a Vector \n')
fprintf('******************************************\n')

n2 = [1 3 5 7 9 11 13 15 17 19];

for i=1:length(n2)
    f2=lab03_factorial(n2(i));
    fprintf('The factorial of %d is %d\n',n2(i),f2);
end

% Using a for loop to calculate each factorial
fprintf('******************************************\n')
fprintf('In a For Loop \n')
fprintf('******************************************\n')

for i=1:2:20
    f=lab03_factorial(i);
    fprintf('The factorial of %d is %d\n',i,f);
end

% use a while loop
fprintf('******************************************\n')
fprintf('In a While Loop \n')
fprintf('******************************************\n')
i = 1;
while i < 21
    f=lab03_factorial(i);
    fprintf('The factorial of %d is %d\n',i,f);
    i = i + 2;
end

