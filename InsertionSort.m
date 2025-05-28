arr = [64, 25, 12, 22, 11];
n = length(arr);

for i = 2:n
    key = arr(i);
    j = i - 1;
    
    % Move elements of arr(1..i-1), that are greater than key, one position ahead
    while j >= 1 && arr(j) > key
        arr(j + 1) = arr(j);
        j = j - 1;
    end
    arr(j + 1) = key;
end

disp('Sorted Array:');
disp(arr);