
arr=[3 5 7 9 11 13];

target=9;
n=length(arr);
found= false;

tic  %Start timing
for i=1:n
    if arr(i) == target
        found= true;
        index=i;
        break;
    end
end


    if found
        fprintf('Index of target element is : %d\n', i );
    else
        
        fprintf('Target element is not found\n');
    end

elapsedTime= toc;   % End timing and store ela[sed time

fprintf('Elapsed Time:%f seconds\n',elapsedTime);