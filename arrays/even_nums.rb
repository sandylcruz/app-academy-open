=begin
Write a method even_nums(max) that takes in a
number max and returns an array containing
all even numbers from 0 to max
=end

def even_nums(max)
  even_numbers = []

  i = 0
  while i <= max
    if i % 2 == 0
      even_numbers << i
    end
    i += 1
  end
  return even_numbers
end

puts even_nums(10)
