=begin
Write a method reverse_words that takes in a sentence
string and returns the sentence with the order of
the characters in each word reversed.
Note that we need to reverse the order of characters
in the words, do not reverse the order of words
in the sentence.
=end

def reverse_words(sent)
  words = sent.split(" ")
  new_words = []
  words.each do |word|
    new_words << word.reverse
  end
  reversed = new_words.join(" ")
  reversed
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
