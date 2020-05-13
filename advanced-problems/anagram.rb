=begin
Write a method anagrams? that takes in two words
and returns a boolean indicating whether or not
the words are anagrams. Anagrams are words that
contain the same characters but not necessarily
in the same order. Solve this without using .sort
=end

def char_count(word)
  count = Hash.new(0)
  word.each_char do |char|
    count[char] += 1
  end
  count
end

def anagrams?(word1, word2)
  return char_count(word1) == char_count(word2)
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
