=begin
Write a method select_odds(numbers) that takes in an array of numbers
and returns a new array containing the odd numbers of the original array.
=end

def select_odds(numbers)
  odd_numbers = []
  numbers.each do |number|
    if number % 2 != 0
      odd_numbers << number
    end
  end
  odd_numbers
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
print select_odds([2, 4, 6])
