=begin
Write a method odd_range(min, max) that takes in two numbers min and max.
The method should return an array containing all odd numbers from min to max (inclusive).
=end

def odd_range(min, max)
  number_array = min..max
  array = []
  number_array.each do |number|
    if number % 2 != 0
      array.push(number)
    end
  end
  return array
end
p odd_range(1, 10)
