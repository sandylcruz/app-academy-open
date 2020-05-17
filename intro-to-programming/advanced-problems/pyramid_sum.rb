=begin
Write a method pyramid_sum that takes in an array of
numbers representing the base of a pyramid. The function
hould return a 2D array representing a complete pyramid
with the given base. To construct a level of the
pyramid, we take the sum of adjacent elements of the
level below.
=end

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def sum_array(arr)
  new_array = []
  arr.each_with_index do |ele, i|
    if i < (arr.length - 1)
      new_array << arr[i] + arr[i + 1]
    end
  end
  new_array
end

def pyramid_sum(base)
  pyramid_array = [base]

  while pyramid_array.length < base.length
    previous_level = pyramid_array[0]
    next_level = sum_array(previous_level)
    pyramid_array.unshift(next_level)
  end
  pyramid_array
end



print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts
#
print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts
