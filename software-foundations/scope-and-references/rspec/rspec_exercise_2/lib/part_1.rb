def partition(array, num)
  # 2d_array = []

  # 2d_array

end

def merge(hash1, hash2)
  new_hash = {}
  new_hash = hash1.merge hash2
  return new_hash
end

def censor(sentence, curse_words)
  words = sentence.split( " ")
  new_words = words.map do |word|
    if curse_words.include?(word.downcase)
      star_vowels(word)
    else
      word
    end
  end
  new_words.join(" ")
end
def star_vowels(string)
  vowels = "aeiou"
  new_string = ""

  string.each_char do |char|
    if vowels.include?(char.downcase)
      new_string += "*"
    else
      new_string += char
    end
  end
  new_string
end

def power_of_two?(num)
  if num != 0 && (num & (num - 1)) == 0
    true
  else
    false
  end
end
