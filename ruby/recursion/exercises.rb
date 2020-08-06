=begin
Write a recursive method, range, that takes a start and an end 
and returns an array of all numbers in that range, exclusive. 
For example, range(1, 5) should return [1, 2, 3, 4]. 
If end < start, you can return an empty array.
=end
def range(num1, num2)
  return [num1] if num1 == num2

  [num1] + range((num1 + 1), num2)
end
# puts "Range tests:"
# puts range(1, 5) == [1, 2, 3, 4, 5]
# puts range(5, 5) == [5]
# puts range(0, 10) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# puts range(11, 15) == [11, 12, 13, 14, 15]
# puts 
=begin
Write both a recursive and iterative version of sum of an array.
=end
def sum_array_recursively(array)
  return array[0] if array.length == 1
  array[0] + sum_array_recursively(array[1..-1])
end
# puts "Sum array tests:"
# puts sum_array_recursively([1, 2, 3]) == 6
# puts sum_array_recursively([10, 20, 30, 40, 50]) == 150
# puts sum_array_recursively([10, 10, 10, 10, 10]) == 50

def sum_array_iteratively(array)
  i = 0
  sum_array = 0

  while i < (array.length)
    sum_array += array[i]
    i += 1
  end
  sum_array
end
# puts sum_array_iteratively([1, 2, 3]) == 6
# puts sum_array_iteratively([10, 20, 30, 40, 50]) == 150
# puts sum_array_iteratively([10, 10, 10, 10, 10]) == 50
# puts 

=begin
Write two versions of exponent that use two different 
recursions:
# recursion 1
exp(b, 0) = 1
exp(b, n) = b * exp(b, n - 1)

# recursion 2
exp(b, 0) = 1
exp(b, 1) = b
exp(b, n) = exp(b, n / 2) ** 2             [for even n]
exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2) [for odd n]
=end

def exponentiation_1(base, power)
  return 1 if power == 0
  base * exponentiation_1(base, (power - 1))
end
# puts "Exponentiation 1 tests:"
# puts exponentiation_1(0, 1) == 0
# puts exponentiation_1(1, 1) == 1
# puts exponentiation_1(2, 2) == 4
# puts exponentiation_1(7, 2) == 49
# puts exponentiation_1(8, 4) == 4096
# puts exponentiation_1(10, 4) ==10000
# puts 

def exponentiation_2(base, power)
  return 1 if power == 0
  return base if power == 1

  smaller_element = power - 1
  base_to_smaller_exponent = exponentiation_2(base, smaller_element)

  if power.even?
    exponentiation_2(base, (power / 2)) ** 2
  else
    base * base_to_smaller_exponent
  end
end
# puts "Exponentiation 2 tests:"
# puts exponentiation_2(0, 1) == 0
# puts exponentiation_2(1, 1) == 1
# puts exponentiation_2(2, 2) == 4
# puts exponentiation_2(7, 5) == 16807
# puts exponentiation_2(8, 4) == 4096
# puts exponentiation_2(10, 4) ==10000
# puts 

=begin
Write method that will perform a "deep" duplication of the 
interior arrays
=end

def deep_dup(array)
  dup_array = []

  array.each do |element|
    if element.is_a?(Array)
      dup_array << deep_dup(element)
    else
      dup_array << element
    end
  end
  dup_array
end

# puts "Deep dup tests:"
# print deep_dup([1, 2, 3])
# print deep_dup([1, [2, 3]])



=begin
Write a recursive and an iterative Fibonacci method. 
The method should take in an integer n and return the 
first n Fibonacci numbers in an array.

You shouldn't have to pass any arrays between methods; 
you should be able to do this just passing a single 
argument for the number of Fibonacci numbers requested.
=end

def recursive_fib(n)
  return 0 if n == 1
  return 1 if n == 2
  x = n - 1
  y = n - 2

  return recursive_fib(x) + recursive_fib(y)
end
# puts "Recursive fibonacci tests: "
# puts recursive_fib(1) == 0
# puts recursive_fib(2) == 1
# puts recursive_fib(3) == 1
# puts recursive_fib(4) == 2
# puts recursive_fib(5) == 3
# puts recursive_fib(6) == 5
# puts recursive_fib(7) == 8

def iterative_fib(n)
  fib_array = [0]

  n.times do |i|
    if i == 0
      fib_array[i] = 0
    elsif i == 1
      fib_array[i] = 1
    else
      fib_array[i] = fib_array[i - 1] + fib_array[i - 2]
    end
  end
  return fib_array[n - 1]
end
# puts "Iterative fibonacci tests: "
# puts iterative_fib(1) == 0
# puts iterative_fib(2) == 1
# puts iterative_fib(3) == 1
# puts iterative_fib(4) == 2
# puts iterative_fib(5) == 3
# puts iterative_fib(6) == 5
# puts iterative_fib(7) == 8

=begin
The binary search algorithm begins by comparing the target 
value to the value of the middle element of the sorted array. 
If the target value is equal to the middle element's value, 
then the position is returned and the search is finished. 
If the target value is less than the middle element's 
value, then the search continues on the lower half of the 
array; or if the target value is greater than the middle 
element's value, then the search continues on the upper 
half of the array. This process continues, eliminating 
half of the elements, and comparing the target value to 
the value of the middle element of the remaining elements 
- until the target value is either found (and its associated 
element position is returned), or until the entire array 
has been searched (and "not found" is returned).
=end

def binary_search(array, target)
  middle_index = array.length / 2
  middle_element = array[middle_index]
  first_half = array[0...middle_index]
  second_half = array[(middle_index + 1)..-1]

  return middle_index if target == middle_element
  return nil if array.length == 0
 
  if target < middle_element
    result = binary_search(first_half, target)
  elsif target > middle_element
    offset = first_half.length + 1
    result = binary_search(second_half, target)
    if result == nil
      return nil
    else
      return result + offset
    end
  else
    return nil
  end

end
# puts "Binary search tests:"
# puts binary_search([1, 2, 3, 4], 2) == 1
# puts binary_search([2, 3, 4, 5], 3) == 1
# puts binary_search([2, 4, 6, 8, 10], 6) == 2
# puts binary_search([1, 3, 4, 5, 9], 5) == 3
# puts binary_search([1, 2, 3, 4, 5, 6], 6) == 5
# puts binary_search([1, 2, 3, 4, 5, 6], 0) == nil
# puts binary_search([1, 2, 3, 4, 5, 7], 6) == nil

=begin
The base cases are for arrays of length zero or one. 
Do not use a length-two array as a base case. 
This is unnecessary.

You'll want to write a merge helper method to merge the 
sorted halves.
=end

# def merge(left_array, right_array)
#   sorted_array = []
#   print left_array
#   print right_array
#   sorted right_array if left_array.empty? 
 

#   until left_array.empty? || right_array.empty? do
#     if left_array[0] < right_array[0]
#       sorted_array << left_array.shift
#     else
#       sorted_array << right_array.shift
#     end
#   end

#   if right_array.empty?
#     sorted_array << left_array
#   else
#     sorted_array << right_array
#   end
#   sorted_array
# end
# puts "Merge tests:"
# puts merge([3, 2, 1], [4, 5, 6])

# def merge_sort(unsorted_array)
#   return unsorted_array if unsorted_array.length <= 1 
 
#   half_array = unsorted_array.size / 2

#   left_array = unsorted_array.take(half_array)
#   right_array = unsorted_array.drop(half_array)

#   sorted_array = merge(left_array, right_array)
# end

# def merge_halves
# end

=begin
Write a method subsets that will return all subsets of an 
array.
=end

# def subsets(array)
#   return [] if array.empty?
# end
# puts "Subsets test"
# puts subsets([]) #== [[]]
# subsets([1]) # => [[], [1]]
# subsets([1, 2]) # => [[], [1], [2], [1, 2]]
# subsets([1, 2, 3])
# => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]

=begin
Calculate all the permutations of the given array. For an 
array of length n there are n! different permutations. 
So for an array with three elements we will have 
3 * 2 * 1 = 6 different permutations.
=end

# def permutations(array)
# end
# permutations([1, 2, 3]) # => [[1, 2, 3], [1, 3, 2],
#                         #     [2, 1, 3], [2, 3, 1],
#                         #     [3, 1, 2], [3, 2, 1]]

  
# def make_change
# end