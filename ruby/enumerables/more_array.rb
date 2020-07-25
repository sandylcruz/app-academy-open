class Array
  # my_flatten should return all elements of the array into a 
  # new, one-dimensional array. Hint: use recursion!

  # def my_flatten
  #   flattened_array = []

  #   flattened_array
  # end
  # [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]
  # puts

  # Write my_zip to take any number of arguments. It should 
  # return a new array containing self.length elements. 
  # Each element of the new array should be an array with a 
  # length of the input arguments + 1 and contain the merged 
  # elements at that index. If the size of any argument is 
  # less than self, nil is returned for that location.

  # def my_zip(*args)
  #   args.each do |arg|
  #     return nil if arg <= 1
  #   end
  #   zipped_array = []

  #   zipped_array
  # end
  # a = [ 4, 5, 6 ]
  # b = [ 7, 8, 9 ]
  # [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
  # a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
  # [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

  # c = [10, 11, 12]
  # d = [13, 14, 15]
  # [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]
  # puts

  # Write a method my_rotate that returns a new array containing 
  # all the elements of the original array in a rotated order. 
  # By default, the array should rotate by one element. If a 
  # negative value is given, the array is rotated in the opposite
  # direction.

  # def my_rotate(num = 1)
  #   rotated_array = []
    
  #   rotated_array
  # end

  # a = [ "a", "b", "c", "d" ]
  # a.my_rotate         #=> ["b", "c", "d", "a"]
  # a.my_rotate(2)      #=> ["c", "d", "a", "b"]
  # a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
  # a.my_rotate(15)     #=> ["d", "a", "b", "c"]
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
  def my_reverse
    reversed = []
    i = 0

    while i < self.length
      reversed.unshift(self[i])
      i += 1
    end
    reversed
  end

  puts [ "a", "b", "c" ].my_reverse == ["c", "b", "a"]
  puts [ 1 ].my_reverse == [1]
end