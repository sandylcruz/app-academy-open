=begin
The first three Mersenne primes are 3, 7, and 31. 
Write a method mersenne_prime that accepts a 
number, n, as an argument and returns the n-th 
Mersenne prime.
=end

def mersenne_prime(n)
end

p mersenne_prime(1) # 3
p mersenne_prime(2) # 7
p mersenne_prime(3) # 31
p mersenne_prime(4) # 127
p mersenne_prime(6) # 131071
puts puts

=begin
Write a method triangular_word? that accepts a 
word as an argument and returns a boolean 
indicating whether or not that word's number 
encoding is a triangular number. You can assume 
that the argument contains lowercase letters.
=end
def triangular_word?(word)
end

p triangular_word?('abc')       # true
p triangular_word?('ba')        # true
p triangular_word?('lovely')    # true
p triangular_word?('question')  # true
p triangular_word?('aa')        # false
p triangular_word?('cd')        # false
p triangular_word?('cat')       # false
p triangular_word?('sink')      # false
puts puts

=begin
Write a method consecutive_collapse that accepts an 
array of numbers as an argument. The method should 
return a new array that results from continuously 
removing consecutive numbers that are adjacent 
in the array. If multiple adjacent pairs are 
consecutive numbers, remove the leftmost pair 
first. 
=end

def consecutive_collapse(array)
end
p consecutive_collapse([3, 4, 1])                     # [1]
p consecutive_collapse([1, 4, 3, 7])                  # [1, 7]
p consecutive_collapse([9, 8, 2])                     # [2]
p consecutive_collapse([9, 8, 4, 5, 6])               # [6]
p consecutive_collapse([1, 9, 8, 6, 4, 5, 7, 9, 2])   # [1, 9, 2]
p consecutive_collapse([3, 5, 6, 2, 1])               # [1]
p consecutive_collapse([5, 7, 9, 9])                  # [5, 7, 9, 9]
p consecutive_collapse([13, 11, 12, 12])              # []
puts puts

=begin
Write a method pretentious_primes that takes 
accepts an array and a number, n, as arguments. 
The method should return a new array where each 
element of the original array is replaced according 
to the following rules:

when the number argument is positive, replace an 
element with the n-th nearest prime number that 
is greater than the element when the number
argument is negative, replace an element with the 
n-th nearest prime number that is less than the 
element
=end

def pretentious_primes(array, n)
end

p pretentious_primes([4, 15, 7], 1)           # [5, 17, 11]
p pretentious_primes([4, 15, 7], 2)           # [7, 19, 13]
p pretentious_primes([12, 11, 14, 15, 7], 1)  # [13, 13, 17, 17, 11]
p pretentious_primes([12, 11, 14, 15, 7], 3)  # [19, 19, 23, 23, 17]
p pretentious_primes([4, 15, 7], -1)          # [3, 13, 5]
p pretentious_primes([4, 15, 7], -2)          # [2, 11, 3]
p pretentious_primes([2, 11, 21], -1)         # [nil, 7, 19]
p pretentious_primes([32, 5, 11], -3)         # [23, nil, 3]
p pretentious_primes([32, 5, 11], -4)         # [19, nil, 2]
p pretentious_primes([32, 5, 11], -5)         # [17, nil, nil]
