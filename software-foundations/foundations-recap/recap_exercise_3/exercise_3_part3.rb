=begin
Write a method multiply(a, b) that takes in two numbers and 
returns their product.

You must solve this recursively (no loops!)
You must not use the multiplication (*) operator
=end

def multiply(a, b)
  if a == 0 || b == 0
    return 0
  elsif a == 1 
    return 1
  elsif b == 1
    return a
  end

  is_a_only_negative = a < 0 && b > 0
  is_b_only_negative = b < 0 && a > 0

  if is_a_only_negative || is_b_only_negative
    return -1 * multiply(a.abs, b.abs)
  end

  if a < 0 && b < 0
    return multiply(a.abs, b.abs)
  end

  result = multiply(a, (b - 1))
  result + a
end

p multiply(3, 5) == 15
p multiply(5, 3) == 15
p multiply(2, 4) == 8
p multiply(0, 10) == 0
p multiply(-3, -6) == 18
p multiply(3, -6) == -18
p multiply(-3, 6) == -18
puts 
puts

=begin
The Lucas Sequence is a sequence of numbers. The first number 
of the sequence is 2. The second number of the Lucas Sequence 
is 1. To generate the next number of the sequence, we add up 
the previous two numbers. For example, the first six numbers 
of the sequence are: 2, 1, 3, 4, 7, 11, ...

Write a method lucas_sequence that accepts a number 
representing a length as an arg. The method should return 
an array containing the Lucas Sequence up to the given length. 
Solve this recursively.
=end

def lucas_sequence(num)
  return [] if num == 0
  return [2] if num == 1
  return [2, 1] if num == 2

  seq = lucas_sequence(num - 1)
  next_ele = seq[-1] + seq[-2]
  seq << next_ele
  seq
end

p lucas_sequence(0) == []
p lucas_sequence(1) == [2]    
p lucas_sequence(2) == [2, 1]
p lucas_sequence(3) == [2, 1, 3]
p lucas_sequence(6) == [2, 1, 3, 4, 7, 11]
p lucas_sequence(8) == [2, 1, 3, 4, 7, 11, 18, 29]

puts 
puts

=begin
Write a method prime_factorization(num) that accepts a number 
and returns an array representing the prime factorization 
of the given number. This means that the array should contain 
only prime numbers that multiply together to the given num. 
The array returned should contain numbers in ascending order. 
Do this recursively.
=end

def prime_factorization(num)
  (2...num).each do |factor|
    if num % factor == 0
      other_fact = num / factor
      return [ *prime_factorization(factor), 
      *prime_factorization(other_fact)]
    end
  end
  [ num ]
end

p prime_factorization(12) == [2, 2, 3]
p prime_factorization(24) == [2, 2, 2, 3]
p prime_factorization(25) == [5, 5]
p prime_factorization(60) == [2, 2, 3, 5]
p prime_factorization(7) == [7]
p prime_factorization(11) == [11]
p prime_factorization(2017) == [2017]