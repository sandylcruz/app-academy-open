def my_map(array, &prc)
  i = 0
  new_array = []

  while i < array.length
    new_array << prc.call(array[i])
  end

  new_array
end
puts 'my_map test:'
puts my_map([1, 2, 3, 4, 5] { |num| num * 2} )
puts



def my_each(array, &prc)
  i = 0

  while i < (array.length)
    prc.call(array[i])
    i += 1
  end
end
puts 'my_each test non-monkey patched:'
my_each([1, 2, 3]) { |num| puts num }
puts

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

def zero_counter(numbers)
  zero_counter = 0
  numbers_array = numbers.to_s.split("")
  print numbers_array
  # numbers.each do |number|
  #   zero_counter += 1 if number == 0
  # end
end
# puts zero_counter(01)

def fibonacci(num)
end