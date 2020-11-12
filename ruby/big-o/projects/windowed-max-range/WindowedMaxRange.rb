require_relative "MinMaxStackQueue"
require 'benchmark'

def windowed_max_range(array, window_size)
  max_range = nil
  queue = MinMaxStackQueue.new

  array.each do |num|
    queue.enqueue(num)

    if queue.size > window_size
      queue.dequeue
    end

    if queue.size == window_size
      current_range = queue.max - queue.min
    
      if max_range.nil? || current_range > max_range
        max_range = current_range
      end
    end
  end

  max_range
end
# puts windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# puts windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# puts windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# puts windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

array = (0..100000).to_a
puts Benchmark.measure {windowed_max_range(array, 1000)}

