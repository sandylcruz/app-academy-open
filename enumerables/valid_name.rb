=begin
Write a method is_valid_name that takes in a string and returns a boolean
indicating whether or not it is a valid name.
=end

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(string)
  parts = string.split(" ")
  if parts.length < 2
    false
  end

  parts.each do |part|
    if !is_capitalized(part)
      false
    end
  end
  true
end


def is_capitalized(word)
  if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
    true
  else
    false
  end
end


puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
