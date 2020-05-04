=begin
Write a method pig_latin_word that takes in a word
string and translates the word into pig latin.

Pig latin translation uses the following rules:
- for words that start with a vowel, add 'yay' to the end
- for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

=end

def get_first_letters(word)

end


def pig_latin_word(word)
  new_word = ""
  first_letters = word[0].downcase
  vowels = ["a", "e", "i", "o", "u"]

  if vowels.include?(first_letters)
    new_word = word + "yay"
  else
    new_word = word + "ay"
  end
  new_word
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
