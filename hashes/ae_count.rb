=begin
Write a method ae_count that takes in a string and returns a hash
containing the number of a's and e's in the string. Assume
the string contains only lowercase characters.
=end

def ae_count(str)
  a_count = 0
  e_count = 0
  counter = 0
  vowel_hash = {}

  while counter < str.length do
    if str[counter] == "a"
      a_count += 1
    elsif str[counter] == "e"
      e_count += 1
    end
    counter += 1
  end

  vowel_hash[:a] = a_count
  vowel_hash[:e] = e_count

  return vowel_hash

end

LETTERS = ['a', 'e']

def ae_count(string)
  string.split('').each_with_object({ a: 0, e: 0 }) do |character, hash|
    LETTERS.each { |letter| hash[letter.to_sym] += 1 if character == letter }
    hash
  end
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}

#
