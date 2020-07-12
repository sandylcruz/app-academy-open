=begin
Write a method duos that accepts a string as an 
argument and returns the count of the number of 
times the same character appears consecutively 
in the given string.
=end

# def duos(word)
#   count = 0
#   (0..(word.length - 1)).each do |i|
#     if word[i] == word[i + 1]
#       count += 1
#     end
#   end
#   count
# end

def duos(word)
  count = 0 
  i = 0

  while i < word.length
    if word[i] == word[i + 1]
      count += 1
    end
    i += 1
  end
  count
end

p duos('bootcamp') == 1
p duos('wxxyzz') == 2
p duos('hoooraay') == 3
p duos('dinosaurs') == 0
p duos('e') == 0
puts puts

=begin
Write a method sentence_swap that accepts a 
sentence and a hash as arguments. The method 
should return a new sentence where every word 
is replaced with its corresponding value in 
the hash. If a word does not exist as a key of 
the hash, then it should remain unchanged.
=end

def sentence_swap(sentence, hash)
  new_words = []
  words = sentence.split(" ")

  words.each do |word|
    if hash.has_key?(word)
      new_words << hash[word]
    else
      new_words << word
    end
  end
  new_words.join(" ")
end

p sentence_swap('anything you can do I can do',
  'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
) == 'nothing you shall drink I shall drink'

p sentence_swap('what a sad ad',
  'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
) == 'make a happy ad'

p sentence_swap('keep coding okay',
  'coding'=>'running', 'kay'=>'pen'
) == 'keep running okay'
puts puts

=begin
Write a method hash_mapped that accepts a hash, 
a proc, and a block. The method should return a 
new hash where each key is the result of the 
original key when given to the block. Each value 
of the new hash should be the result of the 
original values when passed into the proc.
=end

# def hash_mapped(hash, &prc, proc2)
# end

# double = Proc.new { |n| n * 2 }
# p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

# first = Proc.new { |a| a[0] }
# p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# # {25=>"q", 36=>"w"}
# puts puts

=begin
Write a method counted_characters that accepts a 
string as an argument. The method should return 
an array containing the characters of the string 
that appeared more than twice. The characters in 
the output array should appear in the same order 
they occur in the input string.
=end

# def counted_characters(sentence)
# end

# p counted_characters("that's alright folks") # ["t"]
# p counted_characters("mississippi") # ["i", "s"]
# p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
# p counted_characters("runtime") # []
# puts puts

=begin
Write a method triplet_true? that accepts a string 
as an argument and returns a boolean indicating 
whether or not the string contains three of the 
same character consecutively.
=end

# def triplet_true?(string)
# end

# p triplet_true?('caaabb')        # true
# p triplet_true?('terrrrrible')   # true
# p triplet_true?('runninggg')     # true
# p triplet_true?('bootcamp')      # false
# p triplet_true?('e')             # false
# puts puts 

=begin
Write a method energetic_encoding that accepts a 
string and a hash as arguments. The method 
should return a new string where characters of 
the original string are replaced with the 
corresponding values in the hash. If a character 
is not a key of the hash, then it should be 
replaced with a question mark ('?'). Space 
characters (' ') should remain unchanged.
=end

# def energetic_encoding(string, hash)
# end

# p energetic_encoding('sent sea',
#     'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
# ) # 'zimp ziu'

# p energetic_encoding('cat',
#     'a'=>'o', 'c'=>'k'
# ) # 'ko?'

# p energetic_encoding('hello world',
#     'o'=>'i', 'l'=>'r', 'e'=>'a'
# ) # '?arri ?i?r?'

# p energetic_encoding('bike', {}) # '????'
# puts puts 

=begin
Write a method uncompress that accepts a string 
as an argument. The string will be formatted so 
every letter is followed by a number. The method 
should return an "uncompressed" version of the 
string where every letter is repeated multiple 
times given based on the number that appears 
directly after the letter.
=end

# def uncompress(string)
# end

# uncompress('a2b4c1') # 'aabbbbc'
# uncompress('b1o2t1') # 'boot'
# uncompress('x3y1x2z4') # 'xxxyxxzzzz'
