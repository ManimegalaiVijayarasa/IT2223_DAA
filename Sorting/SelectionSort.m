
arr = [64, 25, 12, 22, 11];
n = length(arr); 


for i = 1:n-1  % Loop for sorting the array (steps)
    min_idx = i; % Assume the current index has the minimum value
    
    % Loop to find the minimum element in the remaining unsorted part
    for j = i+1:n  % for unsorted part
        if arr(j) < arr(min_idx)
            min_idx = j; 
        end
    end
    
    
    if min_idx ~= i  % Swap the found minimum element with the element at index i
        temp = arr(i);
        arr(i) = arr(min_idx);
        arr(min_idx) = temp;
    end
end

% Print the sorted array
disp('Sorted Array:');
disp(arr);
