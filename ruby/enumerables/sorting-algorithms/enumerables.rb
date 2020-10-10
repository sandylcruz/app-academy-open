class Array
  # Extend the Array class to include a method named my_each 
  # that takes a block, calls the block on every element of the 
  # array, and returns the original array. Do not use Enumerable's 
  # each method.

  # def my_each(&prc)
  #   self.length.times do |num|
      
  #   end
  #   self
  # end

  # return_value = [1, 2, 3].my_each do |num|
  #   puts num
  # end.my_each do |num|
  #   puts num
  # end
  # # => 1
  #     2
  #     3
  #     1
  #     2
  #     3

  # p return_value  # => [1, 2, 3]


  # Now extend the Array class to include my_select that takes a 
  # block and returns a new array containing only elements that 
  # satisfy the block. Use your my_each method!


  def my_select(&prc)
    selected = []

    self.each do |num|
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

    self.each do |num|
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
    self.each do |num|
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
    self.each do |num|
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
  end
  # [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]

  # Write my_zip to take any number of arguments. It should return 
  # a new array containing self.length elements. Each element 
  # of the new array should be an array with a length of the 
  # input arguments + 1 and contain the merged elements at 
  # that index. If the size of any argument is less than self, 
  # nil is returned for that location.

  def my_zip
  end

  # a = [ 4, 5, 6 ]
  # b = [ 7, 8, 9 ]
  # [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
  # a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
  # [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]
  
  # c = [10, 11, 12]
  # d = [13, 14, 15]
  # [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]


  # Write a method my_rotate that returns a new array containing 
  # all the elements of the original array in a rotated order. 
  # By default, the array should rotate by one element. If a 
  # negative value is given, the array is rotated in the opposite 
  # direction.

  def my_rotate
  end

  # a = [ "a", "b", "c", "d" ]
  # a.my_rotate         #=> ["b", "c", "d", "a"]
  # a.my_rotate(2)      #=> ["c", "d", "a", "b"]
  # a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
  # a.my_rotate(15)     #=> ["d", "a", "b", "c"]


  # my_join returns a single string containing all the elements 
  # of the array, separated by the given string separator. 
  # If no separator is given, an empty string is used.

  def my_join
  end

  # a = [ "a", "b", "c", "d" ]
  # a.my_join         # => "abcd"
  # a.my_join("$")    # => "a$b$c$d"

  # Write a method that returns a new array containing all the 
  # elements of the original array in reverse order.

  def my_reverse
  end

  # [ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
  # [ 1 ].my_reverse               #=> [1]

end

def factors(num)
end

def bubble_sort!(&prc)
end

def bubble_sort(&prc)
end

def substrings(string)
end

def subwords(word, dictionary)
end