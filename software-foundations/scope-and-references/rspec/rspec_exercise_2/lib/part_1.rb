def partition(array, num)
  # 2d_array = []

  # 2d_array

end

def merge(hash1, hash2)
  new_hash = {}
  new_hash = hash1.merge hash2
  return new_hash
end

def censor(string, array)
  vowels = "aeiou"
  new_string = ""

  string.each_char do |char|
    if vowels.include?(char)
      new_string << "*"
    end
  end
  new_string
end

def power_of_two?(num)
  if num != 0 && (num & (num - 1)) == 0
    true
  else
    false
  end
end
