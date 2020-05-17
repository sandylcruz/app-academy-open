=begin

Write a method prime? that takes in a number and returns
a boolean, indicating whether the number is prime.
A prime number is only divisible by 1 and itself.
=end

def prime?(num)
  if num < 2
    return false
  end

  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end
  true
end

def prime?(num)
  range_num = num / 2
  if num > 1
    for 2..range_num
      if num % i == 0
        false
      else
        true
      end
    end
  end
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
