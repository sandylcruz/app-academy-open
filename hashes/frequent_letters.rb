=begin
Write a method frequent_letters that takes in a string and
returns an array containing the characters that appeared
more than twice in the string.
=end

def frequent_letters(string)
  counts = []

  string.chars.uniq.count do |char|
    if string.count(char) > 2
      counts << char
    end
  end
  counts
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
