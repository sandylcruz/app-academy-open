=begin
Write a method opposite_count that takes in an array of unique
numbers. The method should return the number of pairs of
elements that sum to 0.
=end
#

def opposite_count(nums)
  pairs_count = 0

  nums.each_with_index do |num1|
    nums.each_with_index do |num2|
     if num1 + num2 == 0
       pairs_count += 1
     end
    end
  end
  pairs_count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ])
puts opposite_count([ 21, -23, 24 -12, 23 ])
