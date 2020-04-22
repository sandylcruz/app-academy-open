=begin
Write a method fizz_buzz(max) that takes in a number max and
returns an array containing all numbers greater than 0
and less than max that are divisible by either 4 or 6, but not both.
=end

def fizz_buzz(max)
  less_than_max = []
  i = 0

  while i < max
    if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
      less_than_max << i
    end
    i += 1
  end
  return less_than_max
end

puts fizz_buzz(20) # => [4, 6, 8, 16, 18]

print fizz_buzz(15) # => [4, 6, 8]
