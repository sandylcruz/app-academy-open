=begin
Write a method most_vowels that takes in a sentence string
and returns the word of the sentence that contains the
most vowels.
=end

def number_of_vowels(word)
  vowel_count = 0
  i = 0
  while i < word.length
    if word[i] == "a" || word[i] == "e"|| word[i] == "i" || word[i] == "o" || word[i] == "u"
      vowel_count += 1
    end
    i += 1
  end
  return vowel_count
end

def most_vowels(sentence)
  words = sentence.split(" ")
  counts = {}

  words.each do |word|
    counts[word] = number_of_vowels(word)
  end

  most_vowels = counts.sort[-1]
  most_vowels[0]
  
end

print most_vowels("what a wonderful life") #=> "wonderful"



# puts number_of_vowels("aa")
