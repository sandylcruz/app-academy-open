def hipsterfy(word)
  word.reverse.sub(/[aeiou]/, "").reverse
end


def hipsterfy(word)
  # new_word = ""
  # vowels = "aeiou"

  
  # i = 0

  # chars = word.split("")

  # while i < word.length
  #   if char.include?(vowels)
  #      new_word << "0"
  #   else
  #     new_word << char
  #   end
  #   i += 1
  #   end
  # end
  # new_word
end

def vowel_counts(string)

  hash = Hash.new
end

def caesar_cipher(message, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  no_change = ""

  message.split("").each do |char|
    if char.contain?(alphabet)

    else
      no_change << char
    end
  end
end