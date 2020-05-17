=begin
 Write a method, `only_vowels?(str)`, that accepts 
 a string as an arg. The method should return true 
 if the string contains only vowels. The method should 
return false otherwise.
=end
VOWELS = "aeiou"

def is_vowel?(char)
    VOWELS.include?(char)
end

def only_vowels?(str)
    str.split("").each do |char| 
        if !is_vowel?(char)
            return false
        end
    end
    return true
end

def only_vowels?(str)
  vowels = "aeiou"
  str.split("").all? { |char| vowels.include?(char) }
end

p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


