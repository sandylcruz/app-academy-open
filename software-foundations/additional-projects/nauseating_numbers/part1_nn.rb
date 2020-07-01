=begin
Write a method strange_sums that accepts an array of numbers as 
an argument. The method should return a count of the number of 
distinct pairs of elements that have a sum of zero. You may 
assume that the input array contains unique elements.
=end

def strange_sums(array)
  i = 0
  j = 1
  count = 0

  while i < (array.length - 1)
    while j < array.length
      if array[i] + array[j] == 0
        count += 1
      end
      j += 1
    end
    i += 1
    j = i + 1
  end
  count
end

def strange_sums(numbers)
  count = 0
  numbers.each_with_index do |ele1, idx1|
    numbers.each_with_index do |ele2, idx2|
      if idx2 > idx1 && (ele1 + ele2) == 0
        count += 1
      end
    end
  end
  count
end

p strange_sums([2, -3, 3, 4, -2]) == 2
p strange_sums([42, 3, -1, -42]) == 1
p strange_sums([-5, 5]) == 1
p strange_sums([19, 6, -3, -20]) == 0
p strange_sums([9])== 0
puts puts

=begin
Write a method pair_product that accepts an array of numbers 
and a product as arguments. The method should return a 
boolean indicating whether or not a pair of distinct 
elements in the array result in the product when 
multiplied together. You may assume that the input array
contains unique elements.

=end

def pair_product(array, product)
  i = 0
  j = 0

  while i < (array.length - 1)
    while j < array.length
      if array[i] * array[j] == product
        return true
      end
      j += 1
    end
    i += 1
    j = i + 1
  end
  return false
end

def pair_product(array, product)
  array.each_with_index do |num1, idx1|
    array.each_with_index do |num2, idx2|
      if idx2 > idx1 && (num1 * num2) == 0
        return true
      end
    end
  end
  false
end

def pair_product(array, product)
  array.combination(2).any? { |a, b| a * b == product }
end

p pair_product([4, 2, 5, 8], 16) == true
p pair_product([8, 1, 9, 3], 8) == true
p pair_product([3, 4], 12) == true
p pair_product([3, 4, 6, 2, 5], 12) == true
p pair_product([4, 2, 5, 7], 16) == false
p pair_product([8, 4, 9, 3], 8)  == false
p pair_product([3], 12) == false
puts puts

=begin
Write a method rampant_repeats that accepts a string and a hash 
as arguments. The method should return a new string where 
characters of the original string are repeated the number 
of times specified by the hash. If a character does not exist 
as a key of the hash, then it should remain unchanged.
=end

def rampant_repeats(string, hash)
  repeat_string = ""

  string.each_char do |char|
    if hash.has_key?(char)
      repeat_string << (char * hash[char])
    else
      repeat_string << char
    end
  end
  repeat_string
end
p rampant_repeats('taco', {'a'=>3, 'c'=>2}) ==  'taaacco'
p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) == 'ffffeeveerisssh'
p rampant_repeats('misispi', {'s'=>2, 'p'=>2}) == 'mississppi'
p rampant_repeats('faarm', {'e'=>3, 'a'=>2}) == 'faaaarm'
puts puts

=begin
Write a method perfect_square? that accepts a number as an 
argument. The method should return a boolean indicating 
whether or not the argument is a perfect square. 
A perfect square is a number that is the product of 
some number multiplied by itself. For example, 
since 64 = 8 * 8 and 144 = 12 * 12, 64 and 144 are perfect 
squares; 35 is not a perfect square.
=end

def perfect_square?(num)
  Math.sqrt(num) % 1 == 0
end

def perfect_square?(num)
  (1..n).any? { |i| i * i == n }
end

p perfect_square?(1) == true
p perfect_square?(4) == true
p perfect_square?(64) == true
p perfect_square?(100) == true
p perfect_square?(169) == true
p perfect_square?(2) == false
p perfect_square?(40) == false
p perfect_square?(32) == false
p perfect_square?(50) == false