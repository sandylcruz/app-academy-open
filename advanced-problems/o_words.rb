=begin
Write a method o_words that takes in a sentence string
and returns an array of the words that contain an "o".
Use select in your solution!
=end

def o_words(sentence)
  array = sentence.split(" ")
  array.select { |word| word.include?("o") }

end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts
