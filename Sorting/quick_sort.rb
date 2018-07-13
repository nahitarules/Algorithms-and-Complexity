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

sorted = quick_sort(my_arr)
puts sorted
