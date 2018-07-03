def quick_sort(arr)
  pivot = arr.last
  lastIndex = arr.length - 1
  j = 0

  for i in (0..lastIndex)
    if arr.nil?
      return nil
    elsif arr[i] <= pivot
      arr[j], arr[i] = arr[i], arr[j]
      j++
    end
  end
  arr[j + 1], arr[lastIndex] = arr[lastIndex], arr[j + 1]

  left = arr[0,j]
  right = arr[j + 1, lastIndex]

  if left.length > 0
    quick_sort(left)
  elsif right.length > 0
    quick_sort(right)
  end
    return arr = [*left, *right]
end
