=begin
Write a method first_half(array) that takes in an array and returns a new array
containing the first half of the elements in the array.
If there is an odd number of elements, return the first half including the middle element.
=end

def first_half(array)
  middle_index = array.length / 2
  first_half_of_array = array[0..middle_index]
  first_half_of_array
end

puts first_half(["Brian", "Abby", "David", "Ommi"])
puts first_half(["a", "b", "c", "d", "e"])
