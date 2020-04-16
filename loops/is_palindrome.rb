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

puts is_palindrome('racecar')
puts is_palindrome('kayak')
puts is_palindrome('bootcamp')
