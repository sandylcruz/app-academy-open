=begin
The fibonacci sequence is a sequence of numbers whose
first and second elements are 1. To generate further
elements of the sequence we take the sum of the previous
two elements. For example the first 6 fibonacci numbers
are 1, 1, 2, 3, 5, 8. Write a method fibonacci that takes
in a number length and returns the fibonacci sequence
up to the given length.
=end

def fibonacci(length)
  array = [1, 1]

  if length < 1
    return []
  elsif length == 1
    return [1]
  end

  while array.length < length
    last = array[-1]
    second_last = array[-2]
    next_element = last + second_last
    array << next_element
  end
  array
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
