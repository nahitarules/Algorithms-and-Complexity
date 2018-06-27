def binary_recursive(n, arr)
  mid = (arr.length/2.to_f).ciel
  middle = arr[mid]
  
  if middle == n
    return n
  elsif middle < n
    arr = arr[middle, arr.length - 1]
    binary_recursive(n,arr)
  else
    arr = arr[0, middle]
    binary_recursive(n, arr)
end
