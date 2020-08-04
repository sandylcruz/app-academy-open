=begin
Here's how you should approach each problem: 
1. Read the problem statement to make sure 
you fully understand the problem 
2. Identify the base case(s) 
3. Determine the inductive step 
4. Write the function 
5. Run the provided test cases 
=end

=begin
Write a function sum_to(n) that uses recursion 
to calculate the sum from 1 to n (inclusive 
of n).
=end

def sum_to(number)
  puts number
end
puts "Sum text tests:"
print sum_to(5)  # => returns 15
print sum_to(1)  # => returns 1
print sum_to(9)  # => returns 45
print sum_to(-8)  # => returns nil
puts 
=begin
Write a function add_numbers(nums_array) that 
takes in an array of Integers and returns 
the sum of those numbers. Write this method 
recursively.
=end

def add_numbers(number_array)
  puts number_array
end
puts "Add numbers tests:"
print add_numbers([1,2,3,4]) # => returns 10
print add_numbers([3]) # => returns 3
print add_numbers([-80,34,7]) # => returns -39
print add_numbers([]) # => returns nil
puts 
=begin
Let's write a method that will solve Gamma 
Function recursively. The Gamma Function is 
defined Γ(n) = (n-1)!.
=end

def gamma_fnc(number)
  puts number
end
puts "Gamme function tests:"
print gamma_fnc(0)  # => returns nil
print gamma_fnc(1)  # => returns 1
print gamma_fnc(4)  # => returns 6
print gamma_fnc(8)  # => returns 5040
puts

=begin
Write a function ice_cream_shop(flavors, favorite) 
that takes in an array of ice cream flavors available 
at the ice cream shop, as well as the user's 
favorite ice cream flavor. Recursively find out 
whether or not the shop offers their favorite flavor.
=end

def ice_cream_shop(flavors, favorite)
  puts flavors
end
puts "Ice cream shop tests:"
print ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
print ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
print ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
print ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
print ice_cream_shop([], 'honey lavender')  # => returns false
puts

=begin
Write a function reverse(string) that takes in a 
string and returns it reversed.
=end

def reverse(string)
  puts string
end
puts "Reverse tests:"
print reverse("house") # => "esuoh"
print reverse("dog") # => "god"
print reverse("atom") # => "mota"
print reverse("q") # => "q"
print reverse("id") # => "di"
print reverse("") # => ""