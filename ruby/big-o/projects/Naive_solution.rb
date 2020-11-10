=begin
Given an array, and a window size w, find the maximum range 
(max - min) within a set of w elements.

One approach to solving this problem would be:

Initialize a local variable current_max_range to nil.
- Iterate over the array and consider each window of size w. 

For each window:
- Find the min value in the window.
- Find the max value in the window.
- Calculate max - min and compare it to current_max_range. 
  Reset the value of current_max_range if necessary.
- Return current_max_range.

Implement this approach in a method, 
windowed_max_range(array, window_size). 

Think about the time complexity of your method. How many 
iterations are required at each step? What is its overall 
time complexity in Big-O notation?
=end

# Quadratic O(n^2) || O(n * m)

def windowed_max_range(array, window_size)
  current_max_range = nil
  windows = []
  
  (0..array.length - window_size).each do |start|
    chunk = array[start...window_size + start]
    range = chunk.max - chunk.min
    current_max_range = range if current_max_range.nil? || range > current_max_range
  end

  current_max_range
end
puts "Naive tests:"
puts windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
puts windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
puts windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
puts windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

