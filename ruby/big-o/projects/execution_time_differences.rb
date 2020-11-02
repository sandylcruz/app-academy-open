=begin
Given a list of integers find the smallest number in the list.
First, write a function that compares each element to every 
other element of the list. Return the element if all 
other elements in the array are larger.
=end

def my_min_phase_one(list)
  
end
puts "My min phase one"

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
puts my_min_phase_one(list)
puts

=begin
Now rewrite the function to iterate through the list just once 
while keeping track of the minimum. What is the time complexity?
=end

def my_min_phase_two(list)
  smallest_number = 0
  list.each do |num|
    if num < smallest_number
      smallest_num = num
    end
  end

  smallest_number
end
puts "My min phase two"
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
puts my_min_phase_one(list)
puts

=begin
You have an array of integers and you want to find the largest 
contiguous (together in sequence) sub-sum. Find the sums of 
all contiguous sub-arrays and return the max.

Write a function that iterates through the array and finds all 
sub-arrays using nested loops. First make an array to hold 
all sub-arrays. Then find the sums of each sub-array and 
return the max.

Discuss the time complexity of this solution.
=end

def largest_contiguous_subsum_phase_one(list)
end

=begin
Let's make a better version. Write a new function using O(n) 
time with O(1) memory. Keep a running tally of the largest sum. 
To accomplish this efficient space complexity, consider using 
two variables. One variable should track the largest sum so 
far and another to track the current sum. We'll leave the 
rest to you.

Get your story straight, and then explain your solution's time 
complexity to your TA.
=end
def largest_contiguous_subsum_phase_two(list)
end