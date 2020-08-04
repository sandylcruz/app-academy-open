=begin
Write a function sum_to(n) that uses recursion 
to calculate the sum from 1 to n (inclusive 
of n).
=end

def sum_to(number)
  return 1 if number == 1
  return nil if number <= 0

  sum_to(number - 1) + number
end
puts "Sum text tests:"
puts sum_to(5) ==  15
puts sum_to(1) == 1
puts sum_to(9)  == 45
puts sum_to(-8) == nil
puts 
=begin
Write a function add_numbers(nums_array) that 
takes in an array of Integers and returns 
the sum of those numbers. Write this method 
recursively.
=end

def add_numbers(number_array)
  return nil if number_array.length == 0
  return number_array[0] if number_array.length == 1

  number_array[0] + add_numbers(number_array[1..-1])
end
puts "Add numbers tests:"
puts add_numbers([1,2,3,4]) == 10
puts add_numbers([3]) == 3
puts add_numbers([-80,34,7]) == -39
puts add_numbers([]) == nil
puts 
=begin
Let's write a method that will solve Gamma 
Function recursively. The Gamma Function is 
defined Γ(n) = (n-1)!.
=end

def gamma_fnc(number)
  return nil if number == 0
  return 1 if number == 1

  (number - 1) * gamma_fnc(number - 1)
end
puts "Gamma function tests:"
puts gamma_fnc(0) == nil
puts gamma_fnc(1) == 1
puts gamma_fnc(4)  == 6
puts gamma_fnc(8)  == 5040
puts

=begin
Write a function ice_cream_shop(flavors, favorite) 
that takes in an array of ice cream flavors available 
at the ice cream shop, as well as the user's 
favorite ice cream flavor. Recursively find out 
whether or not the shop offers their favorite flavor.
=end

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return true if flavors.last == favorite

  ice_cream_shop(flavors[0...-1], favorite)
end
puts "Ice cream shop tests:"
puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon') == false
puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea') == true
puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio') == false
puts ice_cream_shop(['moose tracks'], 'moose tracks') == true
puts ice_cream_shop([], 'honey lavender') ==  false
puts

=begin
Write a function reverse(string) that takes in a 
string and returns it reversed.
=end

def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0..-2])
end

puts "Reverse tests:"
puts reverse("house") == "esuoh"
puts reverse("dog") == "god"
puts reverse("atom") == "mota"
puts reverse("q") == "q"
puts reverse("id") == "di"
puts reverse("") ==  ""