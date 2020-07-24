class Array
=begin
Extend the Array class to include a method named my_each 
that takes a block, calls the block on every element of 
the array, and returns the original array. Do not use 
Enumerable's each method.
=end

  def my_each(&prc)

  end
  puts puts 

  # =begin
  # Now extend the Array class to include my_select that takes 
  # a block and returns a new array containing only elements 
  # that satisfy the block. Use your my_each method!
  # =end


  # a = [1, 2, 3]
  # a.my_select { |num| num > 1 } # => [2, 3]
  # a.my_select { |num| num == 4 } # => []
  # puts puts

  # =begin
  # Write my_reject to take a block and return a new array 
  # excluding elements that satisfy the block.
  # =end

  def my_reject(&prc)
    rejected_array = []

    self.each do |ele|
      if !prc.call(ele)
        rejected_array << ele
      end
    end
    rejected_array
  end

  a = [1, 2, 3]
  print a.my_reject { |num| num > 1 } # => [1]
  print a.my_reject { |num| num == 4 } # => [1, 2, 3]
  puts puts

  # =begin
  # Write my_any? to return true if any elements of the array 
  # satisfy the block and my_all? to return true only if all 
  # elements satisfy the block.
  # =end

  # def my_any?(&prc)
  # end

  # a = [1, 2, 3]
  # a.my_any? { |num| num > 1 } # => true
  # a.my_any? { |num| num == 4 } # => false
  # a.my_all? { |num| num > 1 } # => false
  # a.my_all? { |num| num < 4 } # => true
end