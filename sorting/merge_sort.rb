def merge_sort(arr)
  len = arr.length
  return arr if len <= 1

  mid = (len/2).floor
  left = arr[0..mid-1]
  right = arr[mid..len]
  merge(left, right)
end

def merge(left, right)
  res = []
   while left.any? && right.any?
     if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
   end
  
  result.concat(left).concat(right)
end
