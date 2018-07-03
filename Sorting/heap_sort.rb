def heap_sort(arr)
  n = (arr.length/2) - 1

  (n).downto(0) do |i|
    heapify(arr, i)
  end
  swap(arr)
end

def heapify(arr, i)

  n = arr.length
  largest = i
  l = (2 * i) + 1
  r = l + 1

  if (l < n) && (arr[l] > arr[largest])
    largest = l
  elsif (r < n) && (arr[r] > arr[largest])
    largest = r
  end

  arr[i], arr[largest] = arr[largest], arr[i] if largest != i
  heapify(arr, largest)

  return arr
end


def swap(arr)
  n = arr.length - 1

  (n).downto(0) do |i|
    arr[0], arr[i] = arr[i], arr[0]
  end
  arr.pop
  heapify(arr, 0)
end
