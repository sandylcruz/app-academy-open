/* Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words
# in the same order as the original array. 
#
# Example:
#
# all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]
*/

function allVowelPairs(words) {}

/*
Write a method, composite?, that takes in a number and returns a boolean indicating if the number
has factors besides 1 and itself

Example:

composite?(9)     # => true
composite?(13)    # => false
*/

function isComposite(num) {}

/*
A bigram is a string containing two letters.
Write a method, find_bigrams, that takes in a string and an array of bigrams.
The method should return an array containing all bigrams found in the string.
The found bigrams should be returned in the the order they appear in the original array.

Examples:

find_bigrams("the theater is empty", ["cy", "em", "ty", "ea", "oo"])  # => ["em", "ty", "ea"]
find_bigrams("to the moon and back", ["ck", "oo", "ha", "at"])        # => ["ck", "oo"]
*/

function findBigrams(str, bigrams) {}

/*
# Write a method, Hash#my_select, that takes in an optional proc argument
# The method should return a new hash containing the key-value pairs that return
# true when passed into the proc.
# If no proc is given, then return a new hash containing the pairs where the key is equal to the value.
#
# Examples:
#
# hash_1 = {x: 7, y: 1, z: 8}
# hash_1.my_select { |k, v| v.odd? }          # => {x: 7, y: 1}
#
# hash_2 = {4=>4, 10=>11, 12=>3, 5=>6, 7=>8}
# hash_2.my_select { |k, v| k + 1 == v }      # => {10=>11, 5=>6, 7=>8})
# hash_2.my_select                            # => {4=>4}
*/
function mySelect() {}

/*
Write a method, String#substrings, that takes in a optional length argument
The method should return an array of the substrings that have the given length.
If no length is given, return all substrings.

Examples:
"cats".substrings      => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
"cats".substrings(2)  => ["ca", "at", "ts"]

*/
function substrings(length) {}

/*
Write a method, String#caesar_cipher, that takes in an a number.
The method should return a new string where each char of the original string is shifted
the given number of times in the alphabet.

Examples:

"apple".caesar_cipher(1)    #=> "bqqmf"
"bootcamp".caesar_cipher(2) #=> "dqqvecor"
"zebra".caesar_cipher(4)    #=> "difve"

*/

function caesar_cipher(num) {}

/*
Write a method prime_factorization(num) that accepts a 
number and returns an array representing the prime 
factorization of the given number. This means that the 
array should contain only prime numbers that multiply 
together to the given num. The array returned should 
contain numbers in ascending order. Do this recursively.

# Examples
prime_factorization(12)     # => [2, 2, 3]
prime_factorization(24)     # => [2, 2, 2, 3]
prime_factorization(25)     # => [5, 5]
prime_factorization(60)     # => [2, 2, 3, 5]
prime_factorization(7)      # => [7]
prime_factorization(11)     # => [11]
prime_factorization(2017)   # => [2017]
*/
