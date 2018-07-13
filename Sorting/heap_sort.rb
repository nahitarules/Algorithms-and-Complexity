=begin
def heap_sort(arr)
  len = arr.length
  n = len/2

  n.downto(1) do |i|
    heapify(arr, i)
  end

  len.downto(2) do |j|
    arr[1], arr[j] = arr[j], arr[1]
    len -= 1
    heapify(arr, 1)
  end

  arr
end
=end

def heap_sort(arr)
  n = arr.length
  build_heap(arr)

  n.downto(2) do |i|
    arr[1], arr[i] = arr[i], arr[1]
    n -= 1
    heapify(arr, 1)
  end
end
def build_heap(arr)
  n = arr.length/2
  n.downto(0) do |i|
    heapify(arr, i)
  end
  arr
end


def heapify(arr,i)

  n = arr.length - 1
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
    heapify(arr, largest)

  end

end


my_arr = [3,67,14,5,6,9,10,19,11]

sorted = heap_sort(my_arr)
puts sorted
