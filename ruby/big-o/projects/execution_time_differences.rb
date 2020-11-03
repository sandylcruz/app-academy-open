=begin
Given a list of integers find the smallest number in the list.
First, write a function that compares each element to every 
other element of the list. Return the element if all 
other elements in the array are larger.
=end

# Quadratic time O(n^2)
def my_min_1a(list)
  smallest_num = list.first
  i = 0

  while i < list.length
    if list[i] < smallest_num
      smallest_num = list[i]
    end
    
    i += 1
  end

  smallest_num
end
puts "My minimum 1A"

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
puts my_min_1a(list) == -5
puts

# Quadratic time O(n^2)
def my_min_1b(list)
  smallest_num = 0
  i = 0

  while i < list.length
    j = 0

    while j < list.length
      first_item = list[i]
      second_item = list[j]
      is_first_less_than_second = first_item < second_item
      
      if is_first_less_than_second && first_item < smallest_num
        smallest_num = first_item
      end

      if j == i - 1
        j += 2
      else
        j += 1
      end
    end

    i += 1
  end

  smallest_num
end
puts "My minimum 1B"

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
puts my_min_1b(list) == -5
puts

=begin
Now rewrite the function to iterate through the list just once 
while keeping track of the minimum. What is the time complexity?
=end

# Constant time
def my_min_2(list)
  smallest_number = list[0]

  list.each do |num|
    if num < smallest_number
      smallest_number = num
    end
  end

  smallest_number
end

puts "My minimum 2"
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
puts my_min_2(list) == -5
puts

=begin
You have an array of integers and you want to find the largest 
contiguous (together in sequence) sub-sum. Find the sums of 
all contiguous sub-arrays and return the max.

Write a function that iterates through the array and finds all 
sub-arrays using nested loops. First make an array to hold 
all sub-arrays. Then find the sums of each sub-array and 
return the max.

Discuss the time complexity of this solution.
=end

# Quadratic time
def largest_contiguous_subsum_1(array)
  subarrays = []
  length = array.length - 1

  (0..length).each do |i|
    (i..length).each do |j|
      subarrays << array[i..j]
    end
  end

  current_highest = nil

  subarrays.each do |subarray|
    new_number = subarray.sum

    if current_highest.nil? || new_number > current_highest
      current_highest = new_number
    end
  end

  current_highest
  # subarrays.map do |sub|
  #   sub.inject do |a, b|
  #     a + b
  #   end
  # end
  # subarrays.map { |sub| sub.inject(:+) }.max
end
# array = [2, 3, -6, 7, -6, 7]
# puts "Largest contiguous subsum part 1"
# puts largest_contiguous_subsum_1(array) # => 8 (from [7, -6, 7])

# list = [-5, -1, -3]
# puts largest_contiguous_subsum_1(list) # => -1 (from [-1])
# puts

=begin
Let's make a better version. Write a new function using O(n) 
time with O(1) memory. Keep a running tally of the largest sum. 
To accomplish this efficient space complexity, consider using 
two variables. One variable should track the largest sum so 
far and another to track the current sum. We'll leave the 
rest to you.

Get your story straight, and then explain your solution's time 
complexity to your TA.
=end

def largest_contiguous_subsum_phase_two(array)
  largest_sum = array.first
  current_sum = array.first

  # array.each do |i|
  #   current_sum += array[i]

  #   if current_sum < 0
  #     current_sum = 0
  #   elsif current_sum > largest_sum
  #     largest_sum = current_sum
  #   end
  # end
  
  i = 1
  while i < array.length
    current_sum += array[i]

    if current_sum < 0
      current_sum = 0
    elsif current_sum > largest_sum
      largest_sum = current_sum
    end

    i += 1
  end

  largest_sum
end

puts "Largest contiguous subsum part 2:"
array = [2, 3, -6, 7, -6, 7]
puts largest_contiguous_subsum_phase_two(array) #== 8

array = [-5, -1, -3]
puts largest_contiguous_subsum_1(array) # => -1 (from [-1])