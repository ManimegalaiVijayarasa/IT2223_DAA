num = input('Enter number To find the factorial : ');

if num<0
    disp('Invalid number. This is negative number.');
elseif num==0
    disp('Factorial of 0 is : 1');
else

fact=1;
% tic;
for i=1:num
   fact= fact*i;
end

disp(fact);
end