=begin
Given an array of unique integers and a target sum, determine whether 
any two integers in the array sum to that amount.
=end

def two_sum?(arr, target_sum)
  
end

arr = [0, 1, 5, 7]
two_sum?(arr, 6) # => should be true
two_sum?(arr, 10) # => should be false

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

def bad_two_sum?(arr, target_sum)
end

=begin
Sort your data, then try to solve the problem.

What does sorting do to the lower bound of your time complexity?
How might sorting that make the problem easier?

Write a second solution, called okay_two_sum?, which uses sorting. 
Make sure it works correctly.
=end

def okay_two_sum?(arr, target_sum)
end

=begin
Remember, a hash map has O(1) #set and O(1) #get, so you can build a 
hash out of each of the n elements in your array in O(n) time. That 
hash map prevents you from having to repeatedly find values in the 
array; now you can just look them up instantly.

See if you can solve the two_sum? problem in linear time now, using 
your hash map.
=end

def two_sum_hash_map?
end