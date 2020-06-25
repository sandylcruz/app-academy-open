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
end

def xor_select(array)
end

def proc_count(value, array)
end

