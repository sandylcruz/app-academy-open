=begin
Write a method that takes in a string and returns the
number of times that the same letter repeats twice
in a row.
=end

def double_letter_count(string)
  double_counter = 0

  string.each_char.with_index do |char, i|
    if string[i] == string[i + 1]
      double_counter += 1
    end
  end
  double_counter
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1
