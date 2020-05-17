=begin
Write a method doubler(numbers) that takes an array of
numbers and returns a new array where every element of the
original array is multiplied by 2.
=end

def doubler(numbers)
  doubled_numbers_array = []

  i = 0
  while i < numbers.length
    old_number = numbers[i]
    new_number = old_number * 2

    doubled_numbers_array << new_number
  i += 1
  end
  return doubled_numbers_array
end
