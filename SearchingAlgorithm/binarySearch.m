
A=[3 6 8 12 14 17 25 29 31 36 42 47 53 55 62]

		target=42;
		

low = 1;
high = length(A);
mid = 0;

found = false;

tic  %Start timing
while low <= high
    mid = floor((low + high) / 2);
    
    if A(mid) == target
        fprintf('Target %d found at index %d\n',target, mid);
        found = true;
        break;
    elseif A(mid) > target
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
