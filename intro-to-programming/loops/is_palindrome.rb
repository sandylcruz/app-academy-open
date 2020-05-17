=begin
Write a method is_palindrome(word) that takes in a string
word and returns the true if the word is a palindrome,
false otherwise. A palindrome is a word that is
spelled the same forwards and backwards.
=end

def is_palindrome(word)
  split_string = word.split('')
  reversed = []
  split_string.size.times { reversed << split_string.pop }
  reversed_string = reversed.join

  word.each_char do |character|
    reversed.unshift(character)
  end
  reversed.join

  if word == reversed_string
    return 'palindrome'
  else
    return 'not palindrome'
  end
end

def is_palindrome(word)
  reversed = []
  word.each_char do |character|
    reversed.unshift(character)
  end
  reversed.join

  if word == reversed_string
    return 'palindrome'
  else
    return 'not palindrome'
  end
end

def is_palindrome(word)
  reversed = ''
  i = 0

  while i < word.length
    reversed = word[i] + reversed
    i += 1
  end

  if word == reversed
    return "palindrome"
  else
    return "not palindrome"
  end
end

def is_palindrome(word)
  (word.size/2).times.all? { |i| word[i] == word[-i-1]}
end

puts is_palindrome('racecar')
puts is_palindrome('kayak')
puts is_palindrome('bootcamp')
