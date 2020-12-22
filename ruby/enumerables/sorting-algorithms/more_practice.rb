def my_map(array)
  
end
puts 'my_map test:'
puts my_map([1, 2, 3, 4, 5])
puts

def my_each(array)
  i = 0
  new_array = []

  while i < (array.length)
    new_array << array[i]
    i += 1
  end

  new_array
end
puts 'my_each test:'
puts my_each([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
puts my_each([-1, 2, 3, -4, 5]) == [-1, 2, 3, -4, 5]
puts

def my_join(str1, str2)
end

def zero_counter(num)
end

def fibonacci(num)
end