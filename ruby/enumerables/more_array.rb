class Array
  # my_flatten should return all elements of the array into a 
  # new, one-dimensional array. Hint: use recursion!

  # def my_flatten
  #   flattened_array = []

  #   self.each do |element|
  #     is_array = element.kind_of?(Array)
  #     if !is_array
  #       flattened_array.push(element)
  #     else
  #       flattened_element = element.my_flatten
  #       flattened_element.each do |sub_element|
  #         flattened_array.push(sub_element)
  #       end
  #     end
  #   end

  #   flattened_array
  # end
  # print [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten == [1, 2, 3, 4, 5, 6, 7, 8]
  # puts

  # Write my_zip to take any number of arguments. It should 
  # return a new array containing self.length elements. 
  # Each element of the new array should be an array with a 
  # length of the input arguments + 1 and contain the merged 
  # elements at that index. If the size of any argument is 
  # less than self, nil is returned for that location.

  # def my_zip(*arrays)
  #   i = 0
  #   zipped_array = Array.new(self.length) { Array.new(0) }

  #   while i < (self.length)
  #     zipped_array[i] << self[i]
  #     arrays.each do |array|
  #       zipped_array[i] << array[i]
  #     end
  #     i += 1
  #   end

  #   zipped_array
  # end

  # a = [ 4, 5, 6 ]
  # b = [ 7, 8, 9 ]
  # c = [10, 11, 12]
  # d = [13, 14, 15]
  # print [1, 2, 3].my_zip(a, b) == [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
  # puts 
  # print  a.my_zip([1,2], [8]) == [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
  # puts 
  # print [1, 2].my_zip(a, b) == [[1, 4, 7], [2, 5, 8]]
  # puts
  # print [1, 2].my_zip(a, b, c, d) == [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]
  # puts

  # Write a method my_rotate that returns a new array containing 
  # all the elements of the original array in a rotated order. 
  # By default, the array should rotate by one element. If a 
  # negative value is given, the array is rotated in the opposite
  # direction.

  def my_rotate(num = 1)
    rotated = []

    self.each do |element|
      rotated.push(element)
    end

    number_of_rotations = num % self.length

    number_of_rotations.times do
      element_to_move = rotated.shift
      rotated.push(element_to_move)
    end
    
    rotated
  end

  # a.my_rotate(1) == a.my_rotate(5) == a.my_rotate(9)...
  # a = [ "a", "b", "c", "d" ]
  # puts a.my_rotate == ["b", "c", "d", "a"]
  # puts a.my_rotate() == ["b", "c", "d", "a"]
  # puts a.my_rotate(2) == ["c", "d", "a", "b"]
  # puts a.my_rotate(-3) == ["b", "c", "d", "a"]
  # puts a.my_rotate(15000003) == ["d", "a", "b", "c"]
  # puts

  # my_join returns a single string containing all the elements 
  # of the array, separated by the given string separator. If no 
  # separator is given, an empty string is used.

  # def my_join
  #   return "" if self.empty?
  # end

  # a = [ "a", "b", "c", "d" ]
  # a.my_join         # => "abcd"
  # a.my_join("$")    # => "a$b$c$d"
  # puts 

  # Write a method that returns a new array containing all the 
  # elements of the original array in reverse order.
  # def my_reverse
  #   reversed = []
  #   i = 0

  #   while i < self.length
  #     reversed.unshift(self[i])
  #     i += 1
  #   end
  #   reversed
  # end

  # puts [ "a", "b", "c" ].my_reverse == ["c", "b", "a"]
  # puts [ 1 ].my_reverse == [1]
end
