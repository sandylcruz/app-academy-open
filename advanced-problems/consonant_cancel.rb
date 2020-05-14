=begin
Write a method consonant_cancel that takes in a sentence and
returns a new sentence where every word begins with it's
first vowel.
=end
def remove_first_consonant(word)

  word.slice!(0)
  puts word

end
remove_first_consonant("cat")


# def consonant_cancel(sentence)
#   new_string = ""
#
#   word = sentence.split
#   new_words =
#
#
#
#   return first_vowel
#
# end
#
# puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
# puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
