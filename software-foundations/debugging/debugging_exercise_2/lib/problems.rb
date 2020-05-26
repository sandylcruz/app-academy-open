# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def is_prime?(num)
  (2..(num - 1)).each do |factor|
    if num % factor == 0
      return false
    end
  end
  return true
end

def largest_prime_factor(num)
  factor_array = []

  (2..num).each do |factor|
    if num % factor == 0 && is_prime?(factor)
      factor_array << factor
    end
  end
  return factor_array.reverse[0]
end





def unique_chars?(word)

end

def dupe_indices(array)

end

def ana_array(array1, array2)

end