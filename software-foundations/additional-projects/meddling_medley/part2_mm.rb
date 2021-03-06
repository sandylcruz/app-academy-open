=begin
Write a method conjunct_select that accepts an array 
and one or more procs as arguments. The method should 
return a new array containing the elements that 
return true when passed into all of the given procs.
=end

def conjunct_select(array, *prcs)
  new_array = []

  array.each do |ele|
    is_false = false
    prcs.each do |prc|
      if prc.call(ele) == false
        is_false = true
        break
      end
    end
    if !is_false 
      new_array << ele
    end
  end

  new_array
end

# def conjunct_select(array, *prcs)
#   new_array = []
#   i = 0

#   while i < prcs.length
#     array.any? do |ele|
#       prcs.call(ele)
#     end
#   end

#   new_array
# end

is_positive = Proc.new { |n| n > 0 }
is_odd = Proc.new { |n| n.odd? }
less_than_ten = Proc.new { |n| n < 10 }

p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive) == [4, 8, 11, 7, 13]
p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd) == [11, 7, 13]
p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd, less_than_ten) == [7]
puts puts 

=begin
Write a method convert_pig_latin that accepts a 
sentence as an argument. The method should translate the 
sentence according to the following rules:

- words that are shorter than 3 characters are unchanged
- words that are 3 characters or longer are translated 
  according to the following rules:
  -  if the word begins with a vowel, simply add 'yay' to the 
    end of the word (example: 'eat'->'eatyay')
  - if the word begins with a non-vowel, move all letters that 
    come before the word's first vowel to the end of the 
    word and add 'ay' (example: 'trash'->'ashtray')
=end

def convert_word(word)
  vowels = "aeiou"
  first_letter = word[0]

  if vowels.include?(first_letter.downcase)
    return word + "yay"
  else
    first_vowel_index = word.index(/[aeiou]/)
    is_first_letter_capitalized = first_letter.upcase == first_letter

    if is_first_letter_capitalized
      return word[first_vowel_index..-1].capitalize + word[0...first_vowel_index].downcase + "ay"
    end

    return word[first_vowel_index..-1] + word[0...first_vowel_index] + "ay"
  end
end

def convert_pig_latin(sentence)
  new_sentence = []
  words = sentence.split(" ")
  vowels = ["a", "e", "i", "o", "u"]

  words.each do |word|
    if word.length >= 3
      new_sentence << convert_word(word)
    else
      new_sentence << word
    end
  end

  new_sentence.join(" ")
end

p convert_pig_latin('We like to eat bananas') == "We ikelay to eatyay ananasbay"
p convert_pig_latin('I cannot find the trash') == "I annotcay indfay ethay ashtray"
p convert_pig_latin('What an interesting problem') == "Atwhay an interestingyay oblempray"
p convert_pig_latin('Her family flew to France') == "Erhay amilyfay ewflay to Ancefray"
p convert_pig_latin('Our family flew to France') == "Ouryay amilyfay ewflay to Ancefray"
puts puts

=begin
Write a method reverberate that accepts a sentence as an 
argument. The method should translate the sentence according 
to the following rules:

  - words that are shorter than 3 characters are unchanged
  - words that are 3 characters or longer are translated 
    according to the following rules:
  - if the word ends with a vowel, simply repeat the word 
    twice (example: 'like'->'likelike')
  - if the word ends with a non-vowel, repeat all letters 
    that come after the word's last vowel, including the 
    last vowel itself (example: 'trash'->'trashash')
=end
def last_vowel_index(word)
  vowels = "aeiou"
  i = 0
  indices = []

  while i < word.length
    if vowels.include?(word[i])
      indices << i
    end
    i += 1
  end
  indices.last
end

def convert_reverberate_word(word)
  last_char = word[-1]
  vowels = "aeiou"

  if vowels.include?(last_char.downcase)
    return word + word.downcase
  else
    last_vowel_index = last_vowel_index(word)
    letters_after_last_vowel = word[last_vowel_index..-1]
    return word + letters_after_last_vowel
  end
end 

def reverberate(sentence)
  words = sentence.split(" ")
  new_sentence = []

  words.each do |word|
    if word.length >= 3
      new_word = convert_reverberate_word(word)
      new_sentence << new_word
    else
      new_sentence << word
    end
  end
  new_sentence.join(" ")
end

p reverberate('We like to go running fast') == "We likelike to go runninging fastast"
p reverberate('He cannot find the trash') == "He cannotot findind thethe trashash"
p reverberate('Pasta is my favorite dish') == "Pastapasta is my favoritefavorite dishish"
p reverberate('Her family flew to France') == "Herer familyily flewew to Francefrance"
puts puts

=begin
Write a method disjunct_select that accepts an array and one 
or more procs as arguments. The method should return a new 
array containing the elements that return true when passed 
into at least one of the given procs.
=end

def disjunct_select(array, *prcs)
  new_array = []
  
  array.each do |ele|
    is_any_proc_true = prcs.any? { |prc| prc.call(ele) }
    if is_any_proc_true
      new_array << ele
    end
  end
  new_array
end

longer_four = Proc.new { |s| s.length > 4 }
contains_o = Proc.new { |s| s.include?('o') }
starts_a = Proc.new { |s| s[0] == 'a' }

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
) == ["apple", "teeming"]

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
    contains_o
) == ["dog", "apple", "teeming", "boot"]

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
    contains_o,
    starts_a
) == ["ace", "dog", "apple", "teeming", "boot"]
puts puts 

=begin
Write a method alternating_vowel that accepts a sentence as an 
argument. The method should return a new sentence where the 
words alternate between having their first or last vowel 
removed. For example:
  the 1st word should be missing its first vowel
  the 2nd word should be missing its last vowel
  the 3rd word should be missing its first vowel
  the 4th word should be missing its last vowel
  ... and so on
=end

def first_vowel_index(word)
  vowels = "aeiou"
  i = 0
  indices = []
  
  while i < word.length
    if vowels.include?(word[i])
      return i
    end
    i += 1
  end
end

def last_vowel_index(word)
  vowels = "aeiou"
  i = 0
  indices = []

  while i < word.length
    if vowels.include?(word[i])
      indices << i
    end
    i += 1
  end
  indices.last
end

def remove_first_vowel(word)
  vowels = "aeiou"
  new_word = []
  
  first_vowel_index = first_vowel_index(word)
  return word if first_vowel_index == nil
  after_vowel_start = first_vowel_index + 1

  before_vowel = word[0...first_vowel_index]
  after_vowel = word[after_vowel_start..-1]
  new_word << before_vowel + after_vowel

  new_word.join("")  
end

def remove_last_vowel(word)
  vowels = "aeiou"
  new_word = []

  last_vowel_index = last_vowel_index(word)
  return word if last_vowel_index == nil

  before_vowel = word[0...last_vowel_index]
  after_vowel = word[(last_vowel_index + 1)..-1]
  new_word << before_vowel + after_vowel

  new_word.join("")  
end

def alternating_vowel(sentence)
  words = sentence.split(" ")
  new_sentence = []
  vowels = "aeiou"

  words.each.with_index do |word, index|
    if index % 2 == 0
      new_sentence << remove_first_vowel(word)
    else
      new_sentence << remove_last_vowel(word)
    end
  end

  new_sentence.join(" ")
end

p alternating_vowel('panthers are great animals') == "pnthers ar grat animls"
p alternating_vowel('running panthers are epic') == "rnning panthrs re epc"
p alternating_vowel('code properly please') == "cde proprly plase"
p alternating_vowel('my forecast predicts rain today') == "my forecst prdicts ran tday"
puts puts 

=begin
Write a method silly_talk that accepts a sentence as an 
argument. The method should translate each word of the 
sentence according to the following rules:
  - if the word ends with a vowel, simply repeat that vowel at 
    the end of the word (example: 'code'->'codee')
  - if the word ends with a non-vowel, every vowel of the 
    word should be followed by 'b' and that same vowel 
    (example: 'siren'->'sibireben')
=end

def ends_with_vowel?(word)
  vowels = "aeiouAEIOU"
  last_char = word[-1]

  if vowels.include?(last_char)
    return true
  else
    return false
  end
end

def change_ends_with_vowel(word)
  new_word = []
  new_word << word + word[-1]
end

def change_ends_with_consonant(word)
  vowels = "aeiouAEIOU"
  new_word = ""

  word.each_char do |char|
    if vowels.include?(char)
      new_word << char + "b" + char.downcase
    else
      new_word << char
    end
  end

  new_word
end

def silly_talk(sentence)
  words = sentence.split(" ")
  new_sentence = []

  words.each do |word|
    if ends_with_vowel?(word)
      new_sentence << change_ends_with_vowel(word)
    else
      new_sentence << change_ends_with_consonant(word)
    end
  end

  new_sentence.join(" ")
end

puts silly_talk('Kids like cats and dogs') == "Kibids likee cabats aband dobogs"
p silly_talk('Stop that scooter') == "Stobop thabat scobooboteber"
p silly_talk('They can code') == "Thebey caban codee"
p silly_talk('He flew to Italy') == "Hee flebew too Ibitabaly"
puts puts 

=begin
Write a method compress that accepts a string as an argument. 
The method should return a "compressed" version of the string 
where streaks of consecutive letters are translated to a 
single appearance of the letter followed by the number of 
times it appears in the streak. If a letter does not form a 
streak (meaning that it appears alone), then do not add 
a number after it.
=end

def is_letter?(char)
  alphabet = ('a'..'z')
  if alphabet.include?(char)
    return true
  else
    return false
  end
end

def compress(string)
  new_string = []
  count = 0
  i = 0

  while i < string.length
    char = string[i]
    count = 1
    i += 1

    while char == string[i]
      count += 1
      i += 1
    end

    if count < 2
      new_string << char
    else
      new_string << char + count.to_s
    end
    new_string.join("")
  end

  new_string.join("")
end

p compress('aabbbbc') == "a2b4c"
p compress('boot') == "bo2t"
p compress('xxxyxxzzzz') == "x3yx2z4"