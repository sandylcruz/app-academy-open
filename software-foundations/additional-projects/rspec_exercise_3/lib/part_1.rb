def is_prime?(num)
  if num < 2 
    return false
  end

  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end
  return true
end

def nth_prime(n)
  current_count = 1
  current_prime_num = 2
  i = current_prime_num

  while current_count <= n
    if is_prime?(i)
      current_count += 1
      current_prime_num = i
    end
    i += 1
  end
  current_prime_num
end

def prime_range(min, max)
  prime_array = []

  (min..max).each do |num|
    if is_prime?(num)
      prime_array << num
    end
  end
  prime_array
end