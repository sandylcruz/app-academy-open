/*
Write a method no_dupes?(arr) that accepts an array as 
an arg and returns an new array containing the elements 
that were not repeated in the array.

no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
no_dupes?([true, true, true])            # => []
*/

function noDupes(array) {}

/*
Write a method no_consecutive_repeats?(arr) that accepts 
an array as an arg. The method should return true if an 
element never appears consecutively in the array; it 
should return false otherwise.

no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
no_consecutive_repeats?(['x'])      
*/

function noConsecutiveRepeats(array) {}

/*
Write a method char_indices(str) that takes in a string as 
an arg. The method should return a hash containing 
characters as keys. The value associated with each key 
should be an array containing the indices where that 
character is found.

# Examples
char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}
*/

function charIndices(string) {}

/*
Write a method longest_streak(str) that accepts a string 
as an arg. The method should return the longest streak 
of consecutive characters in the string. If there are 
any ties, return the streak that occurs later in the 
string.

# Examples
longest_streak('a')           # => 'a'
longest_streak('accccbbb')    # => 'cccc'
longest_streak('aaaxyyyyyzz') # => 'yyyyy
longest_streak('aaabbb')      # => 'bbb'
longest_streak('abc')         # => 'c'
*/

function longestStreak(string) {}

/*
Write a method bi_prime?(num) that accepts a number as an arg and returns a boolean indicating whether or not the number is a bi-prime. A bi-prime is a positive integer that can be obtained by multiplying two prime numbers.

For Example:

14 is a bi-prime because 2 * 7
22 is a bi-prime because 2 * 11
25 is a bi-prime because 5 * 5
24 is not a bi-prime because no two prime

# Examples
bi_prime?(14)   # => true
bi_prime?(22)   # => true
bi_prime?(25)   # => true
bi_prime?(94)   # => true
bi_prime?(24)   # => false
bi_prime?(64)   # => false
*/

function biPrime(num) {}

/*
A Vigenere Cipher is a Caesar cipher, but instead of a 
single key, a sequence of keys is used. For example, if we 
encrypt "bananasinpajamas" with the key sequence 1, 2, 3, 
then the result would be "ccqbpdtkqqcmbodt":

# Message:  b a n a n a s i n p a j a m a s
# Keys:     1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# Result:   c c q b p d t k q q c m b o d t

Write a method vigenere_cipher(message, keys) that accepts 
a string and a key-sequence as args, returning the 
encrypted message. Assume that the message consists of 
only lowercase alphabetic characters.

vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
vigenere_cipher("zebra", [3, 0])            # => "ceerd"
vigenere_cipher("yawn", [5, 1])             # => "dbbo"
*/

function vignereCipher(message, keys) {}

/*
Write a method vowel_rotate(str) that accepts a string as 
an arg and returns the string where every vowel is 
replaced with the vowel the appears before it sequentially 
in the original string. The first vowel of the string 
should be replaced with the last vowel.

# Examples
vowel_rotate('computer')      # => "cempotur"
vowel_rotate('oranges')       # => "erongas"
vowel_rotate('headphones')    # => "heedphanos"
vowel_rotate('bootcamp')      # => "baotcomp"
vowel_rotate('awesome')       # => "ewasemo"
*/

function vowelRotate(string) {}

/*
Extend the string class by defining a String#select method 
that accepts a block. The method should return a new 
string containing characters of the original string 
that return true when passed into the block. If no block 
is passed, then return the empty string. Do not use 
the built-in Array#select in your solution.

# Examples
"app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
"HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
"HELLOworld".select          # => ""
*/

function stringSelect(string) {}

/*
Extend the string class by defining a String#map! method 
that accepts a block. The method should modify the 
existing string by replacing every character with the 
result of calling the block, passing in the original 
character and it's index. Do not use the built-in 
Array#map or Array#map! in your solution.
*/

function stringMap() {}

/*
Write a method multiply(a, b) that takes in two numbers 
and returns their product.

You must solve this recursively (no loops!)
You must not use the multiplication (*) operator

# Examples
multiply(3, 5)        # => 15
multiply(5, 3)        # => 15
multiply(2, 4)        # => 8
multiply(0, 10)       # => 0
multiply(-3, -6)      # => 18
multiply(3, -6)       # => -18
multiply(-3, 6)       # => -18
*/

function multiply() {}

/*
The Lucas Sequence is a sequence of numbers. The first 
number of the sequence is 2. The second number of the 
Lucas Sequence is 1. To generate the next number of the 
sequence, we add up the previous two numbers. 
For example, the first six numbers of the sequence 
are: 2, 1, 3, 4, 7, 11, ...

Write a method lucasSequence that accepts a number 
representing a length as an arg. The method should 
return an array containing the Lucas Sequence up to 
the given length. Solve this recursively.
*/

function lucasSequence() {}

/*

*/
