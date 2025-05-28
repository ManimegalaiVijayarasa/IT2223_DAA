arr = [64,34,25,12,22,11,90];
n = length(arr);

for i = 1:n-1
    for j = 1:n-i
        if arr(j) > arr(j+1)
            % Swap arr(j) and arr(j+1)
            temp = arr(j);
            arr(j) = arr(j+1);
            arr(j+1) = temp;
        end
    end
end

% Print the sorted array
disp('Sorted Array:');
disp(arr);
