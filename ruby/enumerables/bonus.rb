
=begin
Write a method `factors(num)` that returns an array containing 
all the factors of a given number.
=end

def factors(num)
  factors_array = []
  (1..num).each do |factor|
    if num % factor == 0
      factors_array << factor
    end
  end
  factors_array
end
puts "Factors Method:"
puts factors(10) == [1, 2, 5, 10]
puts factors(13) == [1, 13]

=begin
# Implement Bubble sort in a method, `Array#bubble_sort!`. 
Your method should modify the array so that it is in sorted order.


Hint: Ruby has parallel assignment for easily swapping values:
http://rubyquicktips.com/post/384502538/easily-swap-two-variables-values

Finally, modify your `Array#bubble_sort!` method so that, instead of
using `>` and `<` to compare elements, it takes a block to perform the
comparison
=end

def bubble_sort!(array)
  return [] if array.length == 0
  return array if array.length == 1
  is_sorted = false

  until is_sorted == true
    is_sorted = true
    (array.length - 1).times do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        is_sorted = false
      end
    end
  end
  array
end
puts "Bubble_sort! Method:"
puts bubble_sort!([3, 2, 5, 6]) == [2, 3, 5, 6]
puts bubble_sort!([]) == []
puts bubble_sort!([1]) ==  [1]
print bubble_sort!([3, -1, 50, 0, 2, 5, 6]) == [-1, 0, 2, 3, 5, 6, 50]


=begin
After writing `bubble_sort!`, write a `bubble_sort` that does 
the same but doesn't modify the original. Do this in two 
lines using `dup`.
=end

def bubble_sort(&prc)
end

=begin
Write a method, `substrings`, that will take a `String` 
and return an array containing each of its substrings. 
Don't repeat substrings. Example output: `substrings("cat") => 
["c", "ca", "cat", "a", "at", "t"]`.
=end

def substrings(string)
  substring_array = []
  i = 0
  
  while i < string.length
    j = i
    while j < string.length 
      substring_array << string[i..j]
      j += 1
    end
    i += 1
  end
  substring_array
end
puts "Substrings method: "
puts substrings("cat") == ["c", "ca", "cat", "a", "at", "t"]

=begin
Your `substrings` method returns many strings that are not 
true English words. Let's write a new method, `subwords`, 
which will call `substrings`, filtering it to return only 
valid words. To do this, `subwords` will accept both a string 
and a dictionary (an array of words).
=end

def subwords(word, dictionary)
  all_known_substrings = substrings(word)
  actual_substrings = []
  i = 0

  all_known_substrings.each do |substring|
    if dictionary.include?(substring) && !actual_substrings.include?(substring)
      actual_substrings << substring
    end
  end
  actual_substrings
end
puts "Subwords method:"
puts subwords("cats", ["cat"]) == ["cat"]
puts subwords("asdfcatqwer", ["cat", "car"]) == ["cat"]
puts subwords("batcabtarbrat", ["cat", "car"]) == []

dictionary = ["bears", "ear", "a", "army"]
puts subwords("erbearsweatmyajs", dictionary) == ["bears", "ear","a"]

