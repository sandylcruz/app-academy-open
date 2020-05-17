# Write a method, coprime?(num_1, num_2), that accepts 
# two numbers as args. The method should return true 
# if the only common divisor between the two numbers 
# is 1. The method should return false otherwise. 
# For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

# def is_prime(number)
#   (2..(number / 2)).each do |n|
#     if number % n == 0
#       return false
#     end
#   end
#   true
# end

# def factors(number)
#   factor_array = 
#   (2..(number / 2 )).each do |n|
#     if number % n == 0
#       factor_array << n
#     end
#   end
#   return factor_array
# end
# puts factors(20)

def coprime?(num_1, num_2)
  (2..num_1).each do |divisor|
    if num_1 % divisor == 0 && num_2 % divisor == 0
      return false
    end
  end
  true
end



p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
