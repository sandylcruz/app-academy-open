=begin
A number's summation is the sum of all positive numbers
less than or equal to the number. For example: the
summation of 3 is 6 because 1 + 2 + 3 = 6, the summation
of 6 is 21 because 1 + 2 + 3 + 4 + 5 + 6 = 21.
Write a method summation_sequence that takes in a
two numbers: start and length. The method should return
an array containing length total elements. The first number
of the sequence should be the start number. At any point,
to generate the next element of the sequence we take the
summation of the previous element. You can assume that length
is not zero.
=end

def summation_sequence(start)
  (1..start).inject(&:+)
end
puts summation_sequence(5)

# def summation_sequence(start, length)
#   summation_array = [start]
#   next_number = summation_array[-1]
#
#   length.times do |number|
#     summation_sequence << next_number
#   end
#
#
#   # short_length.times do |number|
#   #   previous_number = (number - 1)
#   #   summation_array << previous_number
#   # end
#   #
#   summation_array
# end

#
# print summation_sequence(3, 4) # => [3, 6, 21, 231]
# print summation_sequence(5, 3) # => [5, 15, 120]
