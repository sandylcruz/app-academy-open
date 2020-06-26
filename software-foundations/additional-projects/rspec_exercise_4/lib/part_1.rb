def my_reject(array, &prc)
  rejects = []
  array.each do |num|
    if prc.call(num) == false
      rejects << num
    end
  end
  rejects
end

def my_one?(array, &prc)
  count = 0
  
  array.each do |num|
    if prc.call(num) == true
      count += 1
    end
  end

  if count == 1
    return true
  else
    return false
  end
end

def hash_select(hash, &prc)
  true_hash = {}

  hash.each do |k, v|
    if prc.call(k, v) == true
      true_hash[k] = v
    end
  end

  true_hash
end

# def xor_select(array, &even, &positive)
# end

def proc_count(value, array)
end

