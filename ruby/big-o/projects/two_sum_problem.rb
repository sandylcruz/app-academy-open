=begin
Given an array of unique integers and a target sum, determine whether 
any two integers in the array sum to that amount.

To start with, we could check every possible pair. If we sum each 
element with every other, we're sure to either find the pair that 
sums to the target, or determine that no such pair exists.

Let's start by implementing the brute force solution. Write a method 
called bad_two_sum?, which checks every possible pair.

Make sure that you don't pair an element with itself. However, you 
don't need to bother checking for summing the same pair twice; that 
won't affect your result.

(Note: you can cut the running-time significantly by returning early, 
and by not checking pairs more than once. However, these 
micro-optimizations will not improve the time complexity of the 
solution. Do you see why?)
=end

def bad_two_sum?(array, target_sum)
  possible_sums = []
  number_pairs = []
  i = 0

  while i < array.length
    j = i + 1

    while j < array.length
      possible_pair = [array[i], array[j]]
      number_pairs << possible_pair
      j += 1
    end

    i += 1
  end

  number_pairs.each do |number_pair|
    number_sum = number_pair.sum
    possible_sums << number_sum
  end

  possible_sums.include?(target_sum)
end
puts "Bad_two_sum? Tests:"
array = [0, 1, 5, 7]
puts bad_two_sum?(array, 6) == true
puts bad_two_sum?(array, 10) == false

array = [1, 2, 1]
puts bad_two_sum?(array, 2) == true
puts
=begin
Sort your data, then try to solve the problem.

What does sorting do to the lower bound of your time complexity?
How might sorting that make the problem easier?

Write a second solution, called okay_two_sum?, which uses sorting. 
Make sure it works correctly.
=end

def binary_search(array, target)
  middle_index = array.length / 2
  first_half = array[0...middle_index]
  second_half = array[middle_index..-1]
  middle_value = array[middle_index]
  
  if middle_value == target
    return middle_index
  elsif array.length == 1
    return nil
  elsif middle_value < target
    potential_index = binary_search(second_half, target)
    return nil if potential_index.nil?
    potential_index + middle_index
  elsif middle_value > target
    binary_search(first_half, target)
  end
end
puts "Binary search test:"
puts binary_search([1, 2, 3, 4, 5, 6], 3) == 2
puts binary_search([1, 2, 2, 3, 4, 5, 6], 2) == 1
puts binary_search([1, 2, 2, 3, 4, 5, 6], 9) == nil
puts 

def okay_two_sum?(array, target_sum)
  sorted = array.sort
  i = 0
  
  while i < sorted.length
    number_needed = target_sum - array[i]
    return true if binary_search(array, number_needed)
    i += 1
  end
  
  return false
end
puts "Okay_two_sum? Tests: "
array = [0, 1, 5, 7]
puts okay_two_sum?(array, 6)
puts okay_two_sum?(array, 10)

# array = [1, 2, 1]
# puts okay_two_sum?(array, 2)
# puts

=begin
Remember, a hash map has O(1) #set and O(1) #get, so you can build a 
hash out of each of the n elements in your arrayay in O(n) time. That 
hash map prevents you from having to repeatedly find values in the 
arrayay; now you can just look them up instantly.

See if you can solve the two_sum? problem in linear time now, using 
your hash map.
=end

def two_sum_hash_map?(array, target_sum)
end