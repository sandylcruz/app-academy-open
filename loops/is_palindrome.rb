def is_palindrome(word)
  split_string = word.split('')
  reversed = []
  split_string.size.times { reversed << split_string.pop }
  reversed_string = reversed.join

  if word == reversed_string
    return 'palindrome'
  else
    return 'not palindrome'
  end
end

puts is_palindrome('racecar')
puts is_palindrome('kayak')
puts is_palindrome('bootcamp')
