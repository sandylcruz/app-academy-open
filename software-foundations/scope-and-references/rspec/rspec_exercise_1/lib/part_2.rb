
def hipsterfy(word)
  vowels = "aeiou"

  i = word.length - 1
    while i >= 0
      if vowels.include?(word[i])
        return word[0...i] + word[i+1.. -1]
      end
      i -= 1
    end
    word
  end

def vowel_counts(string)
  new_string = string.downcase
  vowels = { "a" => 0, "e" => 0, "i" => 0, "o" => 0, "u" => 0}
  new_string.each_char { |char| vowels[char] += 1 if vowels.include?(char) }
  vowels
end

def caesar_cipher(string, num)
  # alphabet = "abcdefghijklmnopqrstuvwxyz"
  # caesar_string = ""
  # no_change = ""
  

  # string.split("").each do |char|
  #   if char.contain?(alphabet)

  #   else
  #     no_change << char
  #   end
  # end
end