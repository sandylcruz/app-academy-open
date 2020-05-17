=begin
Write a method element_times_index(nums) that
takes in an array of numbers and returns a new
array containing every number of the original
array multiplied with its index.
=end

def element_times_index(numbers)
  multiplied_numbers = []

  i = 0
  while i < numbers.length
    multiplied_numbers <<  numbers[i] * i
    i += 1
  end
  return multiplied_numbers
end
