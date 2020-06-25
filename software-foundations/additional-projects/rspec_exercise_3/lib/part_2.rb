def element_count(array)
  array.each_with_object(Hash.new) do |ele, count_hash|
    if count_hash[ele]
      count_hash[ele] += 1
    else
      count_hash[ele] = 1
    end
  end
end

def char_replace!(string, hash)
end

def product_inject(array)
end

