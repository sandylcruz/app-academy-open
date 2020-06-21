=begin
Write a method bi_prime?(num) that accepts a number as an 
arg and returns a boolean indicating whether or not 
the number is a bi-prime. A bi-prime is a positive 
integer that can be obtained by multiplying two prime 
numbers.

For Example:

14 is a bi-prime because 2 * 7
22 is a bi-prime because 2 * 11
25 is a bi-prime because 5 * 5
24 is not a bi-prime because no two prime numbers have a product of 24
=end

def bi_prime?(num)
end

p bi_prime?(14) == true
p bi_prime?(22) == true
p bi_prime?(25) == true
p bi_prime?(94) == true
p bi_prime?(24) == false
p bi_prime?(64) == false

=begin
A Caesar cipher takes a word and encrypts it by offsetting 
each letter in the word by a fixed number, called the key. 
Given a key of 3, for example: a -> d, p -> s, and y -> b.

A Vigenere Cipher is a Caesar cipher, but instead of a single 
key, a sequence of keys is used. For example, if we encrypt 
"bananasinpajamas" with the key sequence 1, 2, 3, then the 
result would be "ccqbpdtkqqcmbodt":

# Message:  b a n a n a s i n p a j a m a s
# Keys:     1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# Result:   c c q b p d t k q q c m b o d t
Write a method vigenere_cipher(message, keys) that accepts a 
string and a key-sequence as args, returning the encrypted 
message. Assume that the message consists of only lowercase 
alphabetic characters.
=end

def vigenere_cipher(word, num)

end



=begin
Write a method vowel_rotate(str) that accepts a string as an a
rg and returns the string where every vowel is replaced with 
the vowel the appears before it sequentially in the original
string. The first vowel of the string should be replaced with 
the last vowel.
=end

def vowel_rotate(str)

end
p vowel_rotate('computer') == "cempotur"
p vowel_rotate('oranges') == "erongas"
p vowel_rotate('headphones') == "heedphanos"
p vowel_rotate('bootcamp') == "baotcomp"
p vowel_rotate('awesome') == "ewasemo"

=begin
Extend the string class by defining a String#select method 
that accepts a block. The method should return a new 
string containing characters of the original string that 
return true when passed into the block. If no block is 
passed, then return the empty string. Do not use the built-in 
Array#select in your solution.
=end

=begin
Extend the string class by defining a String#map! method that 
accepts a block. The method should modify the existing string 
by replacing every character with the result of calling 
the block, passing in the original character and it's index. 
Do not use the built-in Array#map or Array#map! in your 
solution.
=end

class String
 
  def select(&prc)
    if prc
      prc.call(string)
    else
      return ""
    end
  end

  p "app academy".select { |ch| !"aeiou".include?(ch) } == "pp cdmy"
  p "HELLOworld".select { |ch| ch == ch.upcase } == "HELLO"
  p "HELLOworld".select == ""

  def map!
  end

end