=begin
Write a method matrix_addition_reloaded that accepts any number 
of matrices as arguments. The method should return a new matrix 
representing the sum of the arguments. Matrix addition can only 
be performed on matrices of similar dimensions, so if all of 
the given matrices do not have the same "height" and "width", 
then return nil.
=end

# def matrix_addition_reloaded(*matrices)
#   matrix = matrices.first
#   height = matrices.length
#   width = matrix[0].length

#   result = Array.new(height) { Array.new(width) }

#   matrix.each do |m1, m2|
#     puts m1
#     puts m2
#     # if m1.length != m2.length
#     #   return nil
#     # end
#   end
 

#   # result
# end

# matrix_a = [[2,5], [4,7]]
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]]
# matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
# p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
# p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
# p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil
# puts puts

=begin
Write a method squarocol? that accepts a 2-dimensional array as 
an argument. The method should return a boolean indicating 
whether or not any row or column is completely filled with 
the same element. You may assume that the 2-dimensional 
array has "square" dimensions, meaning it's height is the 
same as it's width.
=end


def is_array_uniform?(array)
  i = 1
  first_element = array[0]

  while i < array.length
    current_element = array[i]
    if current_element != first_element
      return false
    end
    i += 1 
  end
  return true
end

def is_array_uniform?(array)
  return true if array.length == 1
  first_element = array[0]
  array[1..-1].all? { |element| element == first_element }
end

def squarocol?(grid)
  height = grid.length
  width = grid[0].length
  i = 0
  
  while i < height
    current_row = grid[i]
    if is_array_uniform?(current_row)
      return true
    end

    i += 1
  end

  j = 0

  while j < width
    current_column = []
    i = 0
  
    while i < height
      element = grid[i][j]
      current_column << element
      i += 1
    end

    if is_array_uniform?(current_column)
      return true
    end

    j += 1
  end

  return false
end

p squarocol?([
    [:a, :x , :d],
    [:b, :x , :e],
    [:c, :x , :f],
]) == true

p squarocol?([
    [:x, :y, :x],
    [:x, :z, :x],
    [:o, :o, :o],
]) == true

p squarocol?([
    [:o, :x , :o],
    [:x, :o , :x],
    [:o, :x , :o],
]) == false

p squarocol?([
    [1, 2, 2, 7],
    [1, 6, 6, 7],
    [0, 5, 2, 7],
    [4, 2, 9, 7],
]) == true

p squarocol?([
    [1, 2, 2, 7],
    [1, 6, 6, 0],
    [0, 5, 2, 7],
    [4, 2, 9, 7],
]) == false
puts puts

=begin
Write a method squaragonal? that accepts 2-dimensional array 
as an argument. The method should return a boolean indicating 
whether or not the array contains all of the same element 
across either of its diagonals. You may assume that the 
2-dimensional array has "square" dimensions, meaning 
its height is the same as its width.
=end

def squaragonal?(grid)
  diagonal_1 = []
  i = 0

  while i < grid.length #diagonal_1
    element = grid[i][i]
    diagonal_1 << element
    i += 1
  end

  return true if is_array_uniform?(diagonal_1)

  diagonal_2 = []

  i = 0
  while i < grid.length
    first_index = (grid.length - 1) - i
    second_index = i
    element = grid[first_index][second_index]

    diagonal_2 << element
    i += 1
  end

  return is_array_uniform?(diagonal_2)
end

p squaragonal?([
    [:x, :y, :o],
    [:x, :x, :x],
    [:o, :o, :x],
]) == true

p squaragonal?([
    [:x, :y, :o],
    [:x, :o, :x],
    [:o, :o, :x],
]) == true

p squaragonal?([
    [1, 2, 2, 7],
    [1, 1, 6, 7],
    [0, 5, 1, 7],
    [4, 2, 9, 1],
]) == true

p squaragonal?([
    [1, 2, 2, 5],
    [1, 6, 5, 0],
    [0, 2, 2, 7],
    [5, 2, 9, 7],
]) == false

puts puts

# =begin
# Write a method pascals_triangle that accepts a positive number, 
# n, as an argument and returns a 2-dimensional array 
# representing the first n levels of pascal's triangle.
# =end

def adjacent_sums(array)
  sums = 0
  (0...array.length).each do |i|
    sums << array[i] + array[i + 1]
  end
  sums
end

def pascals_triangle(n)
  triangle = []
  i = 0

  while i < n #row
    j = 0
    current_row = []

    while j <= i #column
      if i == j || j == 0
        current_row << 1
      else
        previous_row = triangle[i - 1]
        left = previous_row[j - 1]
        right = previous_row[j]
        next_element = right + left
        current_row << next_element
      end
      j += 1
    end

    triangle << current_row
    i += 1
  end

  triangle

end

p pascals_triangle(5) == 
[
    [1],
    [1, 1],
    [1, 2, 1],
    [1, 3, 3, 1],
    [1, 4, 6, 4, 1]
]

p pascals_triangle(7) == 
[
    [1],
    [1, 1],
    [1, 2, 1],
    [1, 3, 3, 1],
    [1, 4, 6, 4, 1],
    [1, 5, 10, 10, 5, 1],
    [1, 6, 15, 20, 15, 6, 1]
]
