=begin

Write a method prime? that takes in a number and returns
a boolean, indicating whether the number is prime.
A prime number is only divisible by 1 and itself.
=end

def prime?(num)

  if num <= 1
    false
  else
    if (2...num).any? { |i| num % i == 0}
      false
    else
      true
    end
  end
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
