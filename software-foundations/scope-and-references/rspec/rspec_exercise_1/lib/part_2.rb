
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

def vowel_counts(string)
  counts = Hash.new(0)
  vowels = "aeiou"

  string.each_char do |char|
    if vowels.include?(char.downcase)
      counts[char.downcase] += 1
    end
  end
  counts
end

def is_in_range?(num)
  if (num >= 97 && num <= 122) || (num >= 65 && num <= 90)
    true
  else
    false
  end
end

def caesar_cipher(string,num)
  
  char_array = string.chars.map do |char|
    ascii_num = char.ord

    is_in_range = is_in_range?(ascii_num)

    if is_in_range
      lowercase_char_offset = 97
      original_char_index = ascii_num - lowercase_char_offset
      raw_char_index = original_char_index + num
      wrapped_char_index = raw_char_index % 26

      new_num = wrapped_char_index + lowercase_char_offset
  
      new_num.chr
    else
      ascii_num.chr
    end
  end

  char_array.join("")
  
end