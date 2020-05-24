def reverse_word(word)
  i = 0
  reverse_array = []
  
  while i < word.length 
    reverse_array.unshift(word[i])
    i += 1
  end
  return reverse_array.join
end

def palindrome?(word)
  if word == reverse_word(word)
    true
  else
    false
  end
end

def palindrome?(word)
  string.each_char.with_index do |char, i|
    if string[i] != string[-i - 1]
      return false
    end
  end
  true
end

def substrings(string)
  substring_array = []
  char = string.split("")

  (0...string.length).each do |start_index|
    (start_index...string.length).each do |end_index|
      substring_array << string[start_index...end_index]
    end
  end
  substring_array
end

def substrings(string)
  substring_array = []
  i = 0
  j = 0

  while i < string.length
    while j < string.length
      substring_array << string[i..j]
      j += 1
    end
    i += 1
    j = i
  end
  substring_array
end

def palindrome_substrings(word)
  # palindrome_sub_array = []

  if substrings(word).length > 1
    return substrings(word)
  end

 
  
  # word.each_char do |char|
  #   if word.length > 1
  #     if palindrome?(word)
  #     palindrome_sub_array << substrings(word)
  #     end
  #   end
  # end
  
  # palindrome_sub_array
end