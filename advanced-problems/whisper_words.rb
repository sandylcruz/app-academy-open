=begin
Write a method whisper_words that takes in an array of words
and returns a new array containing a whispered version
of each word. See the examples. Solve this using map :).
=end

def whisper_words(words)
  whispered = words.map { |word| word.downcase + "..."}
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts
