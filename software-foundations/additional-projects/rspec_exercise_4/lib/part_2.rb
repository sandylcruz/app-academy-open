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
  if num == aliquot_sum(num)
    return true
  else
    return false
  end
end

def ideal_numbers(n)
  perfect_nums = []
  current_num = 0

  while perfect_nums.length < n
    if perfect_number?(current_num)
      perfect_nums << current_num
    end
    current_num += 1
  end
  perfect_nums
end

