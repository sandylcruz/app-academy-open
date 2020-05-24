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

def substrings(string)
  substring_array = []
  char = string.split("")

  (0...string.length).each do |i|
    (i...string.length).each do |j|
      substring_array << string[i..j]
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

def palindrome_substrings(string)
  palindrome_sub_array = []
  
  if palindrome?
   
    if substrings?
    end
  end
  
  palindrome_sub_array
end