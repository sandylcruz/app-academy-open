=begin
Write a method caesar_cipher that takes in a string and
a number. The method should return a new string where
every character of the original is shifted num characters
in the alphabet.
=end

def caesar_cipher(str, num)
alphabet = "abcdefghijklmnopqrstuvwxyz"


ascii = str.chars.map { |char| char.ord }
shifted = ascii.map { |char| char + num }
shifted.map { |char| char.chr }.join

end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
