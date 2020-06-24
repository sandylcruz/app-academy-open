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
end

def prime_range(min, max)
end