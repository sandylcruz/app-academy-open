=begin
Write a method triple_sequence that takes in two numbers,
start and length. The method should return an array
representing a sequence that begins with start and is
length elements long. In the sequence, every element
should be 3 times the previous element. Assume that the
length is at least 1.
=end

def triple_sequence(start, length)
  triple_array = [start]

  short_length = length - 1

  short_length.times do |number|
    previous_number = triple_array[-1]
    triple_array << (previous_number * 3)
  end

  triple_array

end

print triple_sequence(2, 4)   # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts
