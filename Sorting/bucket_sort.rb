def bucket_sort(arr)
  bucketCount = Math.sqrt(arr.length).round
  buckets = Array.new(bucketCount)


  for i in (0...buckets.length)
    buckets[i] = []
  end

  for j in (0...buckets.length)
    for k in (0...arr.length)
      buckets[j].push(arr[k])
    end
  end
  return quick_sort(buckets.flatten.uniq)
end

def quick_sort(array)
  if array.length <= 1
    return array
  else
    pivot = array.last
    less = []
    more =[]
    array.pop
    array.each do |x|
      x <= pivot ? less.push(x) : more.push(x)
    end
    return quick_sort(less) + [pivot] + quick_sort(more)
  end
end

my_arr = [3,67,14,5,6,9,10,19,11]

sorted = bucket_sort(my_arr)
puts sorted
