=begin
Write a method factors_of(num) that takes in a num and returns an array of
all positive numbers less than or equal to num that can divide num.
=end

def factors_of(num)
  factor_array = []
  (1..num).each do |number|
    if num % number == 0
      factor_array.push(number)
    end
  end
  factor_array
end

print factors_of(3)
print factors_of(4)
print factors_of(8)
print factors_of(9)
print factors_of(16)
