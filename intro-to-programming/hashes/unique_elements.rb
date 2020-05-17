=begin
Write a method unique_elements that takes in an array and
returns a new array where all duplicate elements are
removed. Solve this using a hash.
=end

# Hint: all keys of a hash are automatically unique

def unique_elements(arr)

  hash = {}
  uniques = []

  arr.each do |item|

    unless hash.has_key?(item)
      uniques.push(item)
      hash[item] = true
    end
  end
  uniques
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
