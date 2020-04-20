=begin
Write a method yell(words) that takes in an array
of words and returns a new array where every
word from the original array has an
exclamation point after it.
=end

def yell(words)
  yelled_array = []
  i = 0

  while i < words.length
    word = words[i]
    yelled_words = word + "!"
    yelled_array << yelled_words

    i += 1
  end
  return yelled_array
end
