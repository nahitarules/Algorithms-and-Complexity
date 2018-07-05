def improved_ruby(*arrays)
  combined_array = arrays.flatten

  sorted_array = [combined_array.delete_at(combined_array.length-1)]

  combined_array.each do |val|
    i = 0
    while i < sorted_length
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_length - 1
        sorted_array << val
        break
      end
      i+=1
    end
  end
  sorted_array
end
