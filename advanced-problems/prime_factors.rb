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

  (1..num).each do |i|
    if num % i == 0 && prime?(i)
      factors << i
    end
  end
  return factors
end
print prime_factors(24)

  # factors = (2..num).select { |number| num % number == 0 }



  # while i <= (num / 2)
  #   if num % i == 0
  #     divisors << num
  #   end
  #   i += 1
  # end
  # return divisors



# def prime_factors(num)
#   prime_factors = []
#
#   factor = 2
#
#   while factor < num
#     if num % factor == 0
#       prime_factors.push(num)
#     end
#     factor += 1
#   end
#   prime_factors
# end
#
print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
