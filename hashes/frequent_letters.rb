=begin
Write a method frequent_letters that takes in a string and
returns an array containing the characters that appeared
more than twice in the string.
=end

def frequent_letters(string)
  frequency = Hash.new(0)
  string.each_char do |char|
    frequency[char] += 1
  end

  frequent_array = []

  frequency.each do |char, num|
    if num > 2
      frequent_array << char
    end
  end
  frequent_array

end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts

def frequent_letters(string)
  counts = []

  string.chars.uniq.each do |char|
    if string.count(char) > 2
      counts << char
    end
  end
  counts
end
