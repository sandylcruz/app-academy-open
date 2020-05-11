=begin
Write a method caesar_cipher that takes in a string and
a number. The method should return a new string where
every character of the original is shifted num characters
in the alphabet.
=end

def caesar_cipher(str, num)

ascii = str.chars.map { |char| char.ord }
shifted = ascii.map { |char| char + num }
shifted.map { |char| char.chr }.join

end

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_str = ""

  str.each_char do |char|
    old_idx = alphabet.index(char)
    new_indx = old_idx + num
    new_char = alphabet[new_idx % 26]
    new_str += new_char
  end

  new_str
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
