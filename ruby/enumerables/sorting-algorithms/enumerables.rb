class Array
  # Extend the Array class to include a method named my_each 
  # that takes a block, calls the block on every element of the 
  # array, and returns the original array. Do not use Enumerable's 
  # each method.

  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i]) 
      i += 1
    end
    self
  end
  puts "My_each tests: "
  return_value = [1, 2, 3].my_each do |num|
  end
  puts return_value  == [1, 2, 3]
  puts 

  # Now extend the Array class to include my_select that takes a 
  # block and returns a new array containing only elements that 
  # satisfy the block. Use your my_each method!


  def my_select(&prc)
    selected = []

    self.my_each do |num|
      if prc.call(num)
        selected << num
      end
    end

    selected
  end

  puts "My_select tests: "
  a = [1, 2, 3]
  puts a.my_select { |num| num > 1 } == [2, 3]
  puts a.my_select { |num| num == 4 } == []
  puts

  # Write my_reject to take a block and return a new array 
  # excluding elements that satisfy the block.

  def my_reject(&prc)
    rejected = []

    self.my_each do |num|
      unless prc.call(num) == true
        rejected << num
      end
    end

    rejected
  end

  puts "My_reject tests: "
  a = [1, 2, 3]
  puts a.my_reject { |num| num > 1 } == [1]
  puts a.my_reject { |num| num == 4 } == [1, 2, 3]
  puts

  # Write my_any? to return true if any elements of the array 
  # satisfy the block.


  def my_any?(&prc)
    self.my_each do |num|
      if prc.call(num)
        return true
      end
    end
    return false
  end

  puts "My_any? tests: "
  a = [1, 2, 3]
  puts a.my_any? { |num| num > 1 } == true
  puts a.my_any? { |num| num == 4 } == false
  puts

  # Write my_all? to return true only if all 
  # elements satisfy the block.

  def my_all?(&prc)
    self.my_each do |num|
      if !prc.call(num)
        return false
      end
    end
    return true
  end

  puts "My_all? tests: "
  a = [1, 2, 3]
  puts a.my_all? { |num| num > 1 } == false
  puts a.my_all? { |num| num < 4 } == true
  puts

 # My_flatten should return all elements of the array into a new, 
 # one-dimensional array. Hint: use recursion!

  def my_flatten
    flattened_array = []

    self.my_each do |element|
      if element.kind_of?(Array)
        flattened_element = element.my_flatten
        flattened_element.my_each do |element|
          flattened_array << element
        end
      else
        flattened_array << element
      end
    end

    flattened_array
  end

  puts "My_flatten tests: "
  puts [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten == [1, 2, 3, 4, 5, 6, 7, 8]
  puts

  # Write my_zip to take any number of arguments. It should return 
  # a new array containing self.length elements. Each element 
  # of the new array should be an array with a length of the 
  # input arguments + 1 and contain the merged elements at 
  # that index. If the size of any argument is less than self, 
  # nil is returned for that location.

  def my_zip(*arrays)
    zipped_array = []
    i = 0

    while i < self.length
      arrays.each do |array|
        array.each do |num|
          zipped_array << array[i]
        end
      end
      i += 1

    end
  

    zipped_array
  end

  puts "My_zip tests: "
  a = [ 4, 5, 6 ]
  b = [ 7, 8, 9 ]
  # puts [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
  # a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
  # [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]
  
  # c = [10, 11, 12]
  # d = [13, 14, 15]
  # [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]
  puts

  # Write a method my_rotate that returns a new array containing 
  # all the elements of the original array in a rotated order. 
  # By default, the array should rotate by one element. If a 
  # negative value is given, the array is rotated in the opposite 
  # direction.

  def my_rotate(num = 1)
    number_times_to_rotate = num % self.length
    prefix = self.drop(number_times_to_rotate)
    suffix = self.take(number_times_to_rotate)

    prefix + suffix 
  end

  puts "My_rotate tests: "
  a = [ "a", "b", "c", "d" ]
  puts a.my_rotate == ["b", "c", "d", "a"]
  puts a.my_rotate(2) == ["c", "d", "a", "b"]
  puts a.my_rotate(-3) == ["b", "c", "d", "a"]
  puts a.my_rotate(15) == ["d", "a", "b", "c"]
  puts

  # my_join returns a single string containing all the elements 
  # of the array, separated by the given string separator. 
  # If no separator is given, an empty string is used.

  def my_join(joiner = "")
    joined_string = ""

    self.each do |letter|
      if letter != self[-1]
        joined_string << letter + joiner
      else
        joined_string << letter
      end
    end

    joined_string
  end

  puts "My_join tests:"
  a = [ "a", "b", "c", "d" ]
  puts a.my_join == "abcd"
  puts a.my_join("$") == "a$b$c$d"
  puts

  # Write a method that returns a new array containing all the 
  # elements of the original array in reverse order.

  # def my_reverse
  #   return self if self.length == 1
  #   array = self.dup
  #   reversed = []

  #   self.length.times do 
  #     last_element = array.pop
  #     reversed << last_element
  #   end

  #   reversed
  # end

  def my_reverse
    reversed = []

    self.length.times do
      element = self.pop
      reversed.push(element)
    end

    reversed
  end

  puts "My_reverse tests"
  puts [ "a", "b", "c" ].my_reverse == ["c", "b", "a"]
  puts [ 1 ].my_reverse == [1]
  puts
end

def factors(num)
  factors = []

  (1..num).each do |factor|
    if num % factor == 0
      factors << factor
    end
  end

  factors
end
puts "Factors tests: "
puts factors(10) == [1, 2, 5, 10]
puts factors(33) == [1, 3, 11, 33]
puts factors(7) == [1, 7]
puts

def substrings(string)
  substrings = []

  (0...string.length).each do |i|
    (i...string.length).each do |j|
      substring = string[i..j]
      substrings << substring unless substrings.include?(substring)
    end
  end

  substrings
end
puts "Substrings tests"
puts substrings("cat") == ["c", "ca", "cat", "a", "at", "t"]
puts

def subwords(word, dictionary)
  subwords = []

  (0...word.length).each do |i|
    (i...word.length).each do |j|
      substring = word[i..j]
      if dictionary.include?(substring)
        subwords << substring
      end
    end
  end
  subwords
end
puts "Subwords tests: "
puts subwords("cat", ["cat", "at", "arm"]) == ["cat", "at"]
puts

# def bubble_sort(array)
  
#   sorted = false

#   until sorted
#     i = 0
#     sorted = true

#     while i < (array.length - 1)
#       j = i + 1
#       if array[i] > array[j]
#         array[i], array[j] = array[j], array[i]
#         sorted = false
#       end
    
#       i += 1
#     end
#   end
#   array
# end
# puts bubble_sort([5, 2, 3, 11, 6, -1, 0, -11])

# def bubble_sort(array)
#   sorted = false

#   until sorted
#     i = 0
#     sorted = true

#     while i < array.length - 1
#       j = i + 1
#       if array[i] > array[j]
#         array[i], array[j] = array[j], array[i]
#         sorted = false
#       end
#       i += 1
#     end
#   end
  
#   array
# end

# def bubble_sort(array)
#   sorted = false

#   until sorted
#     i = 0
#     sorted = true

#     while i < array.length - 1
#       j = i + 1
#       if array[i] > array[j]
#         array[i], array[j] = array[j], array[i]
#         sorted = false
#       end
#       i += 1
#     end
#   end
#   array
# end

def bubble_sort(array)
  sorted = false
  
  until sorted
    sorted = true
    i = 0
    while i < array.length - 1
      j = i + 1
      if array[i] > array[j]
        array[i], array[j] = array[j], array[i]
        sorted = false
      end
      i += 1
    end
  end

  array
end
puts "Bubble sort tests:"
puts bubble_sort([5, 2, 3, 11, 6, -1, 0, -11]) == [-11, -1, 0, 2, 3, 5, 6, 11]
puts bubble_sort([0, -11, -2, -1, 11, 2]) == [-11, -2, -1, 0, 2, 11]
puts 

# def merge(left, right)
#   sorted = []

#   until left.empty? || right.empty?
#     if left.first <= right.first
#       sorted << left.shift
#     else
#       sorted << right.shift
#     end
#   end
  
#   sorted + left + right
# end

# def merge_sort(array)
#   return array if array.length <= 1

#   middle = array.length / 2
#   left = merge_sort(array[0...middle])
#   right = merge_sort(array[middle..-1])

#   merge(left, right)
# end
# puts "Merge sort tests:"
# puts merge_sort([0, 2, 1, 4, 3, 5]) == [0, 1, 2, 3, 4, 5]
# puts merge_sort([-11, 20, 4, -1, 11, 5, 7]) == [-11, -1, 4, 5, 7, 11, 20]
def merge(left, right)
  sorted = []

  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  sorted + left + right
end 

def merge_sort(array)
  return array if array.length <= 1

  middle = array.length / 2
  left = merge_sort(array[0...middle])
  right = merge_sort(array[middle..-1])

  merge(left, right)
end

puts "Merge sort tests:"
puts merge_sort([0, 2, 1, 4, 3, 5]) == [0, 1, 2, 3, 4, 5]
puts merge_sort([-11, 20, 4, -1, 11, 5, 7]) == [-11, -1, 4, 5, 7, 11, 20]
puts

def binary_search(array, target)
  middle_index = array.length / 2
  first_half = array[0...middle_index]
  second_half = array[middle_index..-1]
  middle_value = array[middle_index]
  
  if middle_value == target
    return middle_index
  elsif array.length == 1
    print "Nil. Value not found"
  elsif middle_value < target
    potential_index = binary_search(second_half, target)
    return nil if potential_index.nil?
    potential_index + middle_index
  elsif middle_value > target
    binary_search(first_half, target)
  end
end

puts "Binary search tests: "
puts binary_search([1, 4, 9, 10, 11, 40, 45, 61], 61)
puts binary_search([1, 4, 9, 10, 11, 40, 45, 61], 62)
puts binary_search([1, 4, 4, 9, 10, 11, 40, 45, 61], 4)

def depth_first_search(node, target)
  node.children.each do |child|
    depth_first_search(child)
  end
end
puts depth_first_search([1, 4, 6, 11, 12, 19, 20, 50])

def breadth_search(node, target)
  queue = []

  until queue.empty?
    current = queue.shift
    return current if current == target
    
    queue << current
    current.each do |child|
      queue << child
    end
  end
end