=begin
Write a method select_long_words(words) that takes in an array of words
and returns a new array containing all of the words of the original array
that are longer than 4 characters.
=end

def select_long_words(words)
  long_words = []
  words.each do |word|
    if word.length > 4
      long_words << word
    end
  end
  long_words
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"])
print select_long_words(["keep", "coding"])
