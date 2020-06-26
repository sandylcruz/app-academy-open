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

def xor_select(array, proc1, proc2)
  true_array = []

  array.each do |ele|
    if proc1.call(ele) == true && proc2.call(ele != true)
      true_array << ele
    elsif proc2.call(ele) == true && proc1.call(ele) != true
      true_array << ele
    end
  end
  true_array
end

def proc_count(value, array)
  count = 0

  array.each do |proc|
    if proc.call(value) == true
      count += 1
    end
  end
  count
end

