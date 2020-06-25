def element_count(array)
  array.each_with_object(Hash.new) do |ele, count_hash|
    if count_hash[ele]
      count_hash[ele] += 1
    else
      count_hash[ele] = 1
    end
  end
end

def element_count(array)
  count_hash = {}
  array.each do |ele|
    if count_hash[ele]
      count_hash[ele] += 1
    else
      count_hash[ele] = 1
    end
  end
  count_hash
end

def char_replace!(string, hash)
  string.each_char.with_index do |char, index|
    if hash.key?(char)
      string[index] = hash[char]
    end
  end
  string
end

def product_inject(array)
  product = 1
  array.inject { |product, n | n * product }
end

# cats = [{ age: 2, name: 'a' }, { age: 3, name: 'b'}]

# cat_ages = {}

# cats.each do |cat|
#   cat_ages[cat[:name]] = cat[:age]
# end


# cat_ages 


# cats.each_with_object({}) do |cat, cat_ages|
#   cat_ages[cat[:name]] = cat[:age]
#   cat_ages
# end

