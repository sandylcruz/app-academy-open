=begin
Write a method to_initials that takes in a person's name string and returns a
string representing their initials.
=end

def to_initials(name)
  initials = ""
  words = name.split(' ')

  words.each do |word|
    initials += word[0]
  end

  return initials
end

def to_initials(name)
  initials = ""
  words = name.split(' ')

  words.each do |word|
    initials << word[0]
  end

  return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
