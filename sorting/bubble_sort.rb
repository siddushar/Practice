def bubble_sort(arr)
  n = arr.length
  for iteration in 0...(n-1) do
    for index in 0...(n-iteration-1) do
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
      end
    end
  end
  return arr
end


# bubble_sort([4,5,95,464,3423,2,53, 34])
