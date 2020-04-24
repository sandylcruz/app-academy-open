=begin
Write a method first_in_array that takes in an array and two elements,
the method should return the element that appears earlier in the array.
=end

def first_in_array(arr, el1, el2)
  first_in = ''
  i = 0
  if el1[i] > el2
    first_in << el1[i]
  end
  i += 1
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"
