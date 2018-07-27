def heap_sort(arr, n)
  mid = n/2

  (mid - 1).downto(1) do |j|
    heapify(arr, n, j)
  end

  (n - 1).downto(0) do |i|
    arr[0], arr[i] = arr[i], arr[0]

    heapify(arr, i, 0)
  end
   arr
end



def heapify(arr, n, i)

  largest = i
  l = (2 * i) + 1
  r = l + 1

  if (l < n) && (arr[l] > arr[largest])
    largest = l
  elsif (r < n) && (arr[r] > arr[largest])
    largest = r
  end

  if largest != i
    arr[i], arr[largest] = arr[largest], arr[i]
    heapify(arr, n, largest)

  end

end


my_arr = [3,67,14,5,6,9,10,19,11]
n = my_arr.length

sorted = heap_sort(my_arr, n)
puts sorted
