=begin
Write a method factorial(num) that takes in a number num and
returns the product of all numbers from 1 up to and including num.
=end

def factorial(num)
  if num == 0
    return 1
  elsif num > 0
    return num * factorial(num - 1)
  end
end

puts factorial(3)
puts factorial(5)
