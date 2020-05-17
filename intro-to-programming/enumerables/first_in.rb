=begin
Write a method first_in_array that takes in an array and two elements,
the method should return the element that appears earlier in the array.
=end

def first_in_array(arr, el1, el2)
  if el1 > el2
    el1
  else
    el2
  end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"
