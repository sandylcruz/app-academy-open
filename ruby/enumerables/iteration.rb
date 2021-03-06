class Array
=begin
Extend the Array class to include a method named my_each 
that takes a block, calls the block on every element of 
the array, and returns the original array. Do not use 
Enumerable's each method.
=end

  def my_each(&prc)
    i = 0

    while i < self.length
      prc.call(self[i])
      i += 1
    end

    self 
  end

  # =begin
  # Now extend the Array class to include my_select that takes 
  # a block and returns a new array containing only elements 
  # that satisfy the block. Use your my_each method!
  # =end

  def my_select(&prc)
    true_array = []
    i = 0

    while i < self.length
      current_num = self[i]
      if prc.call(current_num) == true
        true_array << self[i]
      end
      i += 1
    end

    true_array
  end

  # =begin
  # Write my_reject to take a block and return a new array 
  # excluding elements that satisfy the block.
  # =end

  def my_reject(&prc)
    rejected_array = []

    self.my_each do |ele|
      if !prc.call(ele)
        rejected_array << ele
      end
    end
    rejected_array
  end

  # =begin
  # Write my_any? to return true if any elements of the array 
  # satisfy the block.
  # =end

  def my_any?(&prc)
    i = 0

    while i < self.length
      if prc.call(self[i]) == true
        return true
      end
      i += 1
    end
    return false
  end

  # =begin
  # Write my_all? to return true only if all elements satisfy block
  # =end 

  def my_all?(&prc)
    i = 0

    while i < self.length
      if prc.call(self[i]) != true
        return false
      end
      i += 1
    end

    return true 
  end

end

# puts "my each test"
# return_value = [1, 2, 3].my_each do |num|
#   # puts num
# end.my_each do |num|
#   # puts num
# end
# puts return_value == [ 1, 2, 3]

# puts "my select test"
# a = [1, 2, 3]
# puts a.my_select { |num| num > 1 } == [2, 3]
# puts a.my_select { |num| num == 4 } == []

# puts "my reject test"
# a = [1, 2, 3]
# puts a.my_reject { |num| num > 1 } == [1]
# puts a.my_reject { |num| num == 4 } == [1, 2, 3]

# puts "my any test"
# a = [1, 2, 3]
# puts a.my_any? { |num| num > 1 } == true
# puts a.my_any? { |num| num == 4 } == false

# puts "my all test"
# a = [1, 2, 3]
# puts a.my_all? { |num| num > 1 } == false
# puts a.my_all? { |num| num < 4 } == true