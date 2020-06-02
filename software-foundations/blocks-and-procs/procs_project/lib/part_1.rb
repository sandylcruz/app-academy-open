
def my_map(array, &prc)
  new_arr = []

  array.each { |ele| new_arr << prc.call(ele) } 

  new_arr

end

def my_select(array, &prc)

end

def my_count(array, &prc)
end

def my_any?(array, &prc)
end

def my_all?(array, &prc)
end

def my_none?(array, &prc)
end