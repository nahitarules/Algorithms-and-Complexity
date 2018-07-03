def binary_iterative(n, arr)
  mid = (arr.length/2.to_f).ciel
  middle = arr[mid]

  if middle == n
    return n

  elsif middle < n
    i = middle
    j = arr.length - 1
    sum = i + j
    middle = (sum/2.to_f).ciel
  else
    i = 0
    j = middle
    sum = i + j
    middle = (sum/2.to_f).ciel
  end
end
