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
  i = 2
  while i < n
    if is_prime?(n)
      return n
    end
    i += 1
  end
end

def prime_range(min, max)
  prime_array = []
  (min...max).each do |factor|
    if max % factor == 0 && is_prime?(factor)
      prime_array << factor
    end
  end
  prime_array

end