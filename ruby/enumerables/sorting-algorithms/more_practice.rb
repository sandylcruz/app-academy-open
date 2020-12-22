def my_map(array, &prc)
  i = 0
  new_array = []

  while i < array.length
    new_array << prc.call(array[i])
    i += 1
  end

  new_array
end
puts 'my_map test:'
puts my_map([1, 2, 3]) { |num| num * 2 } == [2, 4, 6]
puts my_map([1, 2, 3]) { |num| num * 3 } == [3, 6, 9]
puts

def my_each(array, &prc)
  i = 0

  while i < (array.length)
    prc.call(array[i])
    i += 1
  end
end
puts 'my_each test non-monkey patched:'
puts my_each([1, 2, 3]) { |num| puts num }

class Array
  def my_each(&prc)
    i = 0
    while i < self.length 
      prc.call(self[i])
      i += 1
    end
  end
end
puts "monkey patch my_each"
accumulator = []
[1, 2, 3].my_each do |num|
  accumulator << num
end
puts accumulator == [1, 2, 3]
puts

def my_join(array, joiner)
  return "" if array.empty?

  new_string = array[0]
  i = 1

  while i < array.length
    new_string += joiner
    new_string += array[i]
    i += 1
  end

  new_string
end
puts "my_join tests: "
puts my_join(["c", "a", "t"], " ") == "c a t"
puts my_join(["a", "b", "c"], " ") == "a b c"
puts my_join(["c", "a", "l", "l", "i", "e"], "$") == "c$a$l$l$i$e"
puts

def zero_counter(integer)
  zero_counter = 0
  numbers_array = integer.to_s.chars.map(&:to_i)

  numbers_array.each do |number|
    zero_counter += 1 if number == 0
  end

  zero_counter
end
puts "zero counter test: "
puts zero_counter(100) == 2
puts zero_counter(100100) == 4
puts zero_counter(001)

def fibonacci(num)
  return num if num < 2

  sequence = [0, 1]
  i = 0

  (num - 1).times do
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end
puts "fibonacci tests:"
puts fibonacci(0) == 0
puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3