def selection_sort(arr)
  n= arr.length
  for i in 0...(n-1) do
    min_index = i
    for j in (i+1)...n do
      if arr[j] < arr[min_index]
        min_index= j
      end
    end
    arr[i], arr[min_index] =arr[min_index], arr[i] if min_index != i
  end
 return arr
end

# Outer loop: Iterates through each element of the array.
# Inner loop: Finds the index of the minimum element in the unsorted portion of the array.
# Swap: After finding the minimum element, it swaps it with the first element of the unsorted portion if necessary.

# arr = [64, 25, 12, 22, 11]
# sorted_arr = selection_sort(arr)
# puts sorted_arr.inspect  # Output: [11, 12, 22, 25, 64]
