=begin
Find the longest fish in O(n^2) time. Do this by 
comparing all fish lengths to all other fish 
lengths
=end

def quadratic_biggest_fish
  fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
  longest_fish = ""

  fish_array.each_with_index do |fish, index|
    fish_array.each do |fish2, index2|
      if fish2.length < fish.length
        longest_fish = fish2
      else
        longest_fish = fish
      end
    end
  end

  longest_fish
end
puts quadratic_biggest_fish

=begin
Find the longest fish in O(n log n) time. Hint: 
You saw a sorting algorithm that runs in O(n log n) 
in the Sorting Complexity Demo. Remember that 
Big O is classified by the dominant term.
=end

def nlogn_biggest_fish(fish)

end

def merge(left, right)
  sorted = []

  while !left.empty? && !right.empty? do
    if left[0] < right[0]
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  return sorted.concat(left).concat(right)
end

def merge_sort(array)
  return array if array.length <= 1

  middle = array.length / 2
  left = merge_sort(array[0...middle])
  right = merge_sort(array[middle..-1])

  merge(left, right)
end
puts "Merge sort test:"
puts merge_sort([11, -1, 2, 0, -1, 4, 6, 8])

def quick_sort
end

=begin
Find the longest fish in O(n) time. The octopus can 
hold on to the longest fish that you have found 
so far while stepping through the array only once.
=end

def linear_biggest_fish(fish)
end

=begin
Given a tile direction, iterate through a tiles 
array to return the tentacle number (tile index) 
the octopus must move. This should take O(n) time.
=end

def slow_dance(direction, tile_array)
end

=begin
Now that the octopus is warmed up, let's help her 
dance faster. Use a different data structure and 
write a new function so that you can access the 
tentacle number in O(1) time.
=end

def fast_dance(direction, tile_array)
end