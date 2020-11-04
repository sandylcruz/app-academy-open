=begin
Given an arrayay of unique integers and a target sum, determine whether 
any two integers in the array sum to that amount.
=end

def two_sum?(array, target_sum)
end
# puts "Two_sum? tests:"
# array = [0, 1, 5, 7]
# puts two_sum?(array, 6) == true
# puts two_sum?(array, 10) == false

=begin
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
    j = 0

    while j < array.length
      possible_pair = [array[i], array[j]]
      if !number_pairs.include?(possible_pair) && array[i] != array[j]
        number_pairs << possible_pair
      end
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
puts
=begin
Sort your data, then try to solve the problem.

What does sorting do to the lower bound of your time complexity?
How might sorting that make the problem easier?

Write a second solution, called okay_two_sum?, which uses sorting. 
Make sure it works correctly.
=end

def okay_two_sum?(array, target_sum)
end

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