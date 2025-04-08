def insertion_sort(arr)
  # Start from the second element (index 1)
  for i in 1...(arr.length) do
    key = arr[i]  # The element to be inserted
    last = i - 1  # The index of the last element in the sorted portion

    # Move elements of arr[0..i-1], that are greater than the key,
    # to one position ahead of their current position
    while last >= 0 && arr[last] > key
      arr[last + 1] = arr[last]
      last -= 1
    end

    # Place the key after the last shifted element
    arr[last + 1] = key
  end
  arr
end


# Insertion Sort is a simple comparison-based sorting algorithm that builds the sorted array one element at a time. Here's how it works:

  #  Start from the second element: We begin by assuming the first element is already sorted. Then we move to the second element and compare it to the first.
  #  Insert each element into the sorted portion: We take the element at index i, and compare it with the elements to its left (which are already sorted).
  #  Shift elements: If the element at index i is smaller than the element at the current position, we shift the larger elements one position to the right to make space for the element.
  #  Insert the element: After shifting the elements, we insert the element in its correct position.
  #  Repeat: This process is repeated for all the elements in the array.
