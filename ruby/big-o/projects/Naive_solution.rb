require 'benchmark'

def windowed_max_range(array, window_size)
  current_max_range = nil
  windows = []
  
  (0..array.length - window_size).each do |start|
    chunk = array[start...window_size + start]
    max = chunk.first
    min = chunk.first

    chunk.each do |num|
      if num < min
        min = num
      elsif num > max
        max = num
      end
    end
    range = max - min
    current_max_range = range if current_max_range.nil? || range > current_max_range
  end

  current_max_range
end

# array = (0..100000).to_a
# puts Benchmark.measure {windowed_max_range(array, 1000)}

# def do_something(array) # O(1) + O(n) + O(1) + O(n) = O(1 + n + 1 + n) = O(2 + 2n) = O(2n) = O(n)
#   min = array.first # O(1)

#   array.each do |n| # O(n) * O(1) = O(n * 1) = O(n)
#     if n < min # O(1)
#       min = n
#     end
#   end

#   max = array.first # O(1)

#   array.each do |n| # O(n) * O(1) = O(n * 1) = O(n)
#     if n > max
#       max = n
#     end
#   end
# end

# def better_do_something(array) # O(1) + O(1) + O(n) = O(1 + 1 + n) = O(2 + n) = O(n)
#   min = array.first # O(1)
#   max = array.first # O(1)

#   array.each do |num| # (O(n) * (O(1) + O (1)) = (O(n) * (O(1))) = O(n * 1) = O(n)
#     if num < min # O(1)
#       min = num
#     elsif num > max # O(1)
#       max = num
#     end
#   end
# end

