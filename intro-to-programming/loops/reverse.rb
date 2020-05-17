=begin
Write a method reverse(word) that takes in a string word and
returns the word with its letters in reverse order.
=end

def reverse(word)
  split_string = word.split('')
  reversed = []
  split_string.size.times { reversed << split_string.pop }
  reversed.join
end

puts reverse('cat')
puts reverse('programming')
puts reverse('bootcamp')

def reverse(word)
  split_string = word.split('')
  reversed = []
  split_string.size.times do |reversed|
    reversed << split_string
  end
  reversed.join
end
