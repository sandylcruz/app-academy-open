=begin
Write a method reverse_range(min, max) that takes in two numbers min and max.
The function should return an array containing all numbers from min to max in

reverse order. The min and max should be excluded from the array
=end

def reverse_range(min, max)
  number_array = (min + 1) ...max
  array = []
  i = 0
  number_array.each do |number|
    array.unshift(number)
  end
  return array
end
puts reverse_range(12, 30)
