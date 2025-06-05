function sortedArr = quickSort(arr)
    if length(arr) <= 1
        sortedArr = arr;
        
    else
        pivot = arr(end);  % Choose the last element as pivot
        left = arr(arr < pivot);
        middle = arr(arr == pivot);
        right = arr(arr > pivot);
        
        sortedArr = [quickSort(left), middle, quickSort(right)];
    end
end

% quickSort([5,2,8,1,7])