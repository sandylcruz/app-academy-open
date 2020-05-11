=begin
Write a method vowel_cipher that takes in a string and
returns a new string where every vowel becomes
the next vowel in the alphabet.
=end
#
def vowel_cipher(string)
  vowels = "aeiou"

  new_chars = string.split("").map do |char|
    if vowels.include?(char)
      old_index = vowels.index(char)
      new_index = (old_index + 1) % 5
      vowels[new_index]
    else
      char
    end
  end

  new_chars.join("")
end

def vowel_cipher(string)
  change = {
    "a" => "e",
    "e" => "i",
    "i" => "o",
    "o" => "u",
    "u" => "a"
  }

  vowels = "aeiou"
  new_array = string.split("").map do |char|
    if vowels.include?(char)
      change[char]
    else
      char
    end
  end
  return new_array.join("")
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
