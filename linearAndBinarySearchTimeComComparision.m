
for i=1:1000

    arr(i)=i;
end





%linear Search-----------------------------------------------------

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
        fprintf('Index of target element found at index : %d\n', i );
    else
        
        fprintf('Target element is not found\n');
    end


elapsedTime= toc;   % End timing and store ela[sed time

fprintf('Elapsed Time:%f seconds\n',elapsedTime);



% Binary Search -------------------------------------------



low = 1;
high = length(arr);
mid = 0;

found = false;

tic  %Start timing
while low <= high
    mid = floor((low + high) / 2);
    
    if arr(mid) == target
        fprintf('Target %d found at index %d\n',target, mid);
        found = true;
        break;
    elseif arr(mid) > target
        high = mid - 1;
    else
        low = mid + 1;
    end
end

elapsedTime= toc;   % End timing and store ela[sed time
fprintf('Elapsed Time:%f seconds\n',elapsedTime);

if ~found
    fprintf('Target not found in the array\n');
end
