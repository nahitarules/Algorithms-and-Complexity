require 'benchmark'
require_relative 'heap_sort'
require_relative 'bucket_sort'
require_relative 'quick_sort'

arr = []
(1..50).each do |i|
  arr.push(i)
end
shuffled = arr.shuffle

puts 'quick sort measurement'

puts Benchmark.measure {quick_sort(shuffled)}

puts 'heap sort measurement'

puts Benchmark.measure {heap_sort(shuffled, shuffled.length)}

puts 'bucket_sort sort measurement'

puts Benchmark.measure {quick_sort(shuffled)}
