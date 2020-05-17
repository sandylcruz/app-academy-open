=begin
Write a method is_valid_email that takes in a string and
returns a boolean indicating whether or not it is a
valid email address.

# For simplicity, we'll consider an email valid when it satisfies:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @
=end
#
def include_at?(string)
  if string.include?("@")
    true
  else
    false
  end
end

def lowercase_before?(string)
  if string.chars.include?('a-z')
    true
  else
    false
  end
end

def one_dot(string)
  split_string = string.split("@")
  second_half = split_string[1]

  if second_half.include?(".")
    true
  else
    false
  end
end

def is_valid_email(string)
  if lowercase_before = true && one_dot = true && second_half = true
    true
  else
    false
  end
end
#
puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
