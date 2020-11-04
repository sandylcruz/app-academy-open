=begin
Write a method #first_anagram? that will generate and store all the 
possible anagrams of the first string. Check if the second string 
is one of these.

Hints:

For testing your method, start with small input strings, otherwise 
you might wait a while. If you're having trouble generating the 
possible anagrams, look into this method. What is the time 
complexity of this solution? What happens if you increase 
the size of the strings?
=end
# n!

def get_anagrams(string)
  return [string] if string.length == 1
  final_anagrams = []

  string.each_char.with_index do |char1, index1|
    prefix = char1
    other_chars = ""

    string.each_char.with_index do |char2, index2|
      other_chars << char2 if index2 != index1
    end

    other_anagrams = get_anagrams(other_chars)

    other_anagrams.each do |suffix|
      new_anagram = prefix + suffix
      final_anagrams << new_anagram
    end
  end

  final_anagrams
end

def first_anagram?(string1, string2)
  string1chars = string1.split("")
  string2chars = string2.split("")
  first_string_anagrams = get_anagrams(string1)
  first_string_anagrams.include?(string2)
end
puts "First anagram? tests:"
puts first_anagram?("cat", "dog") == false
puts first_anagram?("cat", "tac") == true
puts

=begin
Write a method #second_anagram? that iterates over the first string. 
For each letter in the first string, find the index of that letter 
in the second string (hint: use Array#find_index) and delete at that 
index. The two strings are anagrams if an index is found for every 
letter and the second string is empty at the end of the iteration.

Try varying the length of the input strings. What are the differences 
between #first_anagram? and #second_anagram??
=end

def second_anagram?(string1, string2)
  return true if string2.empty?
  string1chars = string1.split("")
  string2chars = string2.split("")

  string1chars.each do |string1_char|
    string2chars.delete(string1_char)
  end

  string2chars.empty?
end
puts "Second anagram tests:"
puts second_anagram?("cat", "dog") == false
puts second_anagram?("cat", "tac") == true
puts
=begin
Write a method #third_anagram? that solves the problem by sorting 
both strings alphabetically. The strings are then anagrams if and 
only if the sorted versions are the identical.

What is the time complexity of this solution? Is it better or worse 
than #second_anagram??
=end

def third_anagram?(string1, string2)
  string1chars = string1.split("")
  string2chars = string2.split("")
  sorted_string_1 = string1chars.sort
  sorted_string_2 = string2chars.sort

  sorted_string_1 == sorted_string_2
end
puts "Third anagram tests:"
puts third_anagram?("cat", "dog") == false
puts second_anagram?("cat", "tac") == true
puts
=begin
Write one more method #fourth_anagram?. This time, use two Hashes 
to store the number of times each letter appears in both words. 
Compare the resulting hashes.

What is the time complexity?

Bonus: Do it with only one hash.
=end

def fourth_anagram?(string1, string2)
end