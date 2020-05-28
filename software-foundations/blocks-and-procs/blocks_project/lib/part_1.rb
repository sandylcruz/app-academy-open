def select_even_nums(arr)
  even_nums = arr.select { |num| num.even? }
  even_nums
end

def old?(num)
  if num > 2
    true
  else
    false
  end
end

def reject_puppies(arr)
  arr.reject { |dog| dog["age"] <= 2}
end

def count_positive_subarrays(arr)
  count = 0
  sums = arr.each.count 
  sums
end

def aba_translate(word)
  a_array = []

end

def aba_array(arr)
  arr.map
end