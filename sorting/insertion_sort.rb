def insertion_sort(arr)
  for i in 1...(arr.length) do
    key = i
    last = i -  1

    while(last >= 0 && last < arr[key])
      arr[last+1] = arr[last]
      last = last - 1
    end

    arr[last+1]=key
  end
  arr
end

# Insertion Sort is a simple comparison-based sorting algorithm that builds the sorted array one element at a time. Here's how it works:

  #  Start from the second element: We begin by assuming the first element is already sorted. Then we move to the second element and compare it to the first.
  #  Insert each element into the sorted portion: We take the element at index i, and compare it with the elements to its left (which are already sorted).
  #  Shift elements: If the element at index i is smaller than the element at the current position, we shift the larger elements one position to the right to make space for the element.
  #  Insert the element: After shifting the elements, we insert the element in its correct position.
  #  Repeat: This process is repeated for all the elements in the array.
