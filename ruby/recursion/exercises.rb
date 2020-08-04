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
puts range(1, 5) == [1, 2, 3, 4, 5]
puts range(5, 5) == [5]
puts range(0, 10) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts range(11, 15) == [11, 12, 13, 14, 15]

=begin
Write both a recursive and iterative version of sum of an array.
=end
def sum_array_recursively(array)
end

def sum_array_iteratively(array)
end

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

def exponentiation_1
end

def exponentiation_2
end

=begin
Write method that will perform a "deep" duplication of the 
interior arrays
=end

def deep_dup
end

=begin
Write a recursive and an iterative Fibonacci method. 
The method should take in an integer n and return the 
first n Fibonacci numbers in an array.

You shouldn't have to pass any arrays between methods; 
you should be able to do this just passing a single 
argument for the number of Fibonacci numbers requested.
=end

def recurisve_fib(n)
end

def iterative_fib(n)
end

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

# def binary_search(array, target)
# end

# binary_search([1, 2, 3], 1) # => 0
# binary_search([2, 3, 4, 5], 3) # => 1
# binary_search([2, 4, 6, 8, 10], 6) # => 2
# binary_search([1, 3, 4, 5, 9], 5) # => 3
# binary_search([1, 2, 3, 4, 5, 6], 6) # => 5
# binary_search([1, 2, 3, 4, 5, 6], 0) # => nil
# binary_search([1, 2, 3, 4, 5, 7], 6) # => nil

=begin
The base cases are for arrays of length zero or one. 
Do not use a length-two array as a base case. 
This is unnecessary.

You'll want to write a merge helper method to merge the 
sorted halves.
=end

# def merge_sort(array)
# end

# def merge_halves
# end

=begin
Write a method subsets that will return all subsets of an 
array.
=end

# def subsets
# end

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