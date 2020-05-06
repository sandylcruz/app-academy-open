=begin
Write a method pick_primes that takes in an array of
numbers and returns a new array containing only
the prime numbers.
=end

def prime?(num)
  if num < 2
    return false
  end

  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end
  true
end

def pick_primes(numbers)
  prime_array = []

  numbers.select { |number| prime?(number) }
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
