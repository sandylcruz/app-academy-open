=begin
Write a method no_dupes?(arr) that accepts an 
array as an arg and returns an new array 
containing the elements that were not repeated 
in the array.
=end

def no_dupes?(arr)

end

p no_dupes?([1, 1, 2, 1, 3, 2, 4]) == [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z']) == ['y']
p no_dupes?([true, true, true]) == []

=begin
Write a method no_consecutive_repeats?(arr) 
that accepts an array as an arg. The method 
should return true if an element never 
appears consecutively in the array; 
it should return false otherwise.
=end

def no_consecutive_repeats?(arr)

end
p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog']) == true
p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])  == false
p no_consecutive_repeats?([10, 42, 3, 7, 10, 3]) == true
p no_consecutive_repeats?([10, 42, 3, 3, 10, 3]) == false
p no_consecutive_repeats?(['x']) == true


=begin
Write a method char_indices(str) that takes in 
a string as an arg. The method should return 
a hash containing characters as keys. 
The value associated with each key should 
be an array containing the indices where that 
character is found.
=end

def char_indices(str)
end
p char_indices('mississippi') == {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
p char_indices('classroom') == {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}

=begin
Write a method longest_streak(str) that accepts 
a string as an arg. The method should return 
the longest streak of consecutive characters 
in the string. If there are any ties, return 
the streak that occurs later in the string.
=end

def longest_streak(str)

end
p longest_streak('a') == 'a'
p longest_streak('accccbbb') == 'cccc'
p longest_streak('aaaxyyyyyzz') == 'yyyyy'
p longest_streak('aaabbb') == 'bbb'
p longest_streak('abc') == 'c'

