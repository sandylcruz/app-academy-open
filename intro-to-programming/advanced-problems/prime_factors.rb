=begin
Write a method prime_factors that takes in a number and
returns an array containing all of the prime factors
of the given number.
=end
def prime?(num)
  if num < 2
    false
  end

  (2...num).each do |factor|
    if num % factor == 0
      return false
    else
      return true
    end
  end
end

def prime_factors(num)
  factors = []

  (2..num).each do |i|
    if num % i == 0 && prime?(i)
      factors << i
    end
  end
  return factors
end
print prime_factors(24)
#
print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
