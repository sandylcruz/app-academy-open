=begin
Write a method range(min, max) that takes in two numbers min and max.
The method should return an array containing all numbers from min to max inclusive.
=end

def range(min, max)
  number_array = min..max
  array = []
  number_array.each do |number|
    array.push(number)
  end
  return array
end

p range(1, 5)
