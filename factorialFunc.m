
function fact = factorialFunc(n)
    
    if n < 0 
        disp('Input must be a non-negative integer');
    end
    
    if n == 0 || n == 1
        fact = 1;
    else
        fact = n * factorialFunc(n-1);
    end
end
