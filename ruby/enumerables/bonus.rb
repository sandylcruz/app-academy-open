
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

# def bubble_sort!(&prc)
# end

# array = [5, 3, 2, 1, 4]
# puts bubble_sort!([]) #== []
# puts bubble_sort!([1]) #== [1]
# puts bubble_sort!()

=begin
After writing `bubble_sort!`, write a `bubble_sort` that does 
the same but doesn't modify the original. Do this in two 
lines using `dup`.
=end

# def bubble_sort(&prc)
# end

=begin
Write a method, `substrings`, that will take a `String` 
and return an array containing each of its substrings. 
Don't repeat substrings. Example output: `substrings("cat") => 
["c", "ca", "cat", "a", "at", "t"]`.
=end

# def substrings(string)
# end
# puts substrings("cat") #== ["c", "ca", "cat", "a", "at", "t"]

=begin
Your `substrings` method returns many strings that are not 
true English words. Let's write a new method, `subwords`, 
which will call `substrings`, filtering it to return only 
valid words. To do this, `subwords` will accept both a string 
and a dictionary (an array of words).
=end

# def subwords(word, dictionary)
# end
# puts subwords("asdfcatqwer", ["cat", "car"]) #== ["cat"]
# puts subwords("batcabtarbrat", ["cat", "car"]) #== []

# dictionary = ["bears", "ear", "a", "army"]
# puts subwords("erbearsweatmyajs", dictionary) #== []

