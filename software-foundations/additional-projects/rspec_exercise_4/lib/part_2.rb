def proper_factors(num)
  factors = []
  (1...num).each do |factor|
    if num % factor == 0
      factors << factor
    end
  end
  factors
end

def aliquot_sum(num)
  sum = 0
  factors = proper_factors(num)

  factors.each do |num|
    sum += num
  end
  sum
end

def aliquot_sum(num)
  factors = proper_factors(num)
  factors.reduce { |sum, num| sum + num}

end

def perfect_number?(num)
end

def ideal_numbers(n)
end

