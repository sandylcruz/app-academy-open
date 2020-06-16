# Write a method, all_vowel_pairs, that takes in an array of words and returns all pairs of words
# that contain every vowel. Vowels are the letters a, e, i, o, u. A pair should have its two words
# in the same order as the original array. 
#
# Example:
#
# all_vowel_pairs(["goat", "action", "tear", "impromptu", "tired", "europe"])   # => ["action europe", "tear impromptu"]

def all_vowel_pairs(words)
  vowels = ["a", "e", "i", "o", "u"]
  i = 0
  j = 1
  word_pair_array = []
  final_pairs = []

  while i < (words.length - 1) do
    while j < words.length do 
      word_pairs = words[i] + " " + words[j]
      word_pair_array << word_pairs
      j += 1
    end
    i += 1
    j = i + 1
  end

  word_pair_array
end

def all_vowel_pairs(words)
  pairs = []
  vowels = ["a", "e", "i", "o", "u"]

  words.each_with_index do |word1, idx1|
    words.each_with_index do |word2, idx2|
      if idx2 > idx1
        word_pairs = word1 + " " + word2
        pairs << word_pairs if vowels.all? { |vowel| word_pairs.include?(vowel) } 
      end
    end
  end
  pairs
end

# Write a method, composite?, that takes in a number and returns a boolean indicating if the number
# has factors besides 1 and itself
#
# Example:
#
# composite?(9)     # => true
# composite?(13)    # => false
def composite?(num)
  i = 2
  while i < num
    if num % i == 0
      return true
    end
    i += 1
  end
  return false
end

def composite?(num)
  (2...num).each do |factor|
    if num % factor == 0
      return true
    end
  end
  return false
end

# A bigram is a string containing two letters.
# Write a method, find_bigrams, that takes in a string and an array of bigrams.
# The method should return an array containing all bigrams found in the string.
# The found bigrams should be returned in the the order they appear in the original array.
#
# Examples:
#
# find_bigrams("the theater is empty", ["cy", "em", "ty", "ea", "oo"])  # => ["em", "ty", "ea"]
# find_bigrams("to the moon and back", ["ck", "oo", "ha", "at"])        # => ["ck", "oo"]
def find_bigrams(str, bigrams)
  bigrams.select { |bigrams| str.include?(bigrams) }
end

class Hash
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
    def my_select(&prc)
      key_value_hash = {}
      self.each do |key, val|
        if prc
          if prc.call(key, val)
            key_value_hash[key] = val
          end
        else
          if key == val
            key_value_hash[key] = val
          end
        end
      end
      key_value_hash
    end

end

class String
    # Write a method, String#substrings, that takes in a optional length argument
    # The method should return an array of the substrings that have the given length.
    # If no length is given, return all substrings.
    #
    # Examples:
    #
    # "cats".substrings     # => ["c", "ca", "cat", "cats", "a", "at", "ats", "t", "ts", "s"]
    # "cats".substrings(2)  # => ["ca", "at", "ts"]
    def substrings(length = nil)
      subs = []
      (0...self.length).each do |start_idx|
        (start_idx...self.length).each do |end_idx|
          sub = self[start_idx..end_idx]
          subs << sub
        end
      end
      if length.nil?
        subs
      else
         subs.select { |str| str.length == length }
      end
    end


    # Write a method, String#caesar_cipher, that takes in an a number.
    # The method should return a new string where each char of the original string is shifted
    # the given number of times in the alphabet.
    #
    # Examples:
    #
    # "apple".caesar_cipher(1)    #=> "bqqmf"
    # "bootcamp".caesar_cipher(2) #=> "dqqvecor"
    # "zebra".caesar_cipher(4)    #=> "difve"

    def caesar_cipher(num)
      new_string = ""

      ascii = self.chars.map do |char|
        old_idx = char.ord 
        new_idx = (old_idx + num).chr
        new_string << new_idx
      end
      new_string
    end
    
end
