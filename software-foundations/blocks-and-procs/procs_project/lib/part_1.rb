
def my_map(array, &prc)
  new_arr = []
  array.each { |ele| new_arr << prc.call(ele) } 
  new_arr
end

def my_select(array, &prc)
  selected = []

  array.each do |ele| 
    if prc.call(ele) == true
      selected << ele
    end
  end

  selected
end

def my_count(array, &prc)
  true_count = 0

  array.each do |ele|
    if prc.call(ele) == true
      true_count += 1
    end
  end

  true_count
end

def my_any?(array, &prc)
  any_true = 0

  array.each do |ele|
    if prc.call(ele) == true
      return true
    end
  end
  return false
end

def my_all?(array, &prc)
end

def my_none?(array, &prc)
end