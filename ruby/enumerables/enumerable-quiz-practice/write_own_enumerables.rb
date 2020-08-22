
# def my_all?(array, &prc)


# end
# puts my_all? { |word| word.length >= 3 }
# puts my_all? { |num| num.odd? }

def my_any?(array, &prc)
  array.each do |element|
    if !prc.call(element) == true
      return false
    end
    return true
  end
end
puts "My_any tests:"
puts my_any? ([1, 2, 3]) { |num| num > 1 } #== true
# puts my_any? ([1, 2, 3]) { |num| num == 4 } #== false
# puts my_any? ([1, 2, 3]) { |num| num < 4 } #== true
puts 

def my_count(array, &prc)

end

def my_filter(array, &prc)
end

def my_each(array, &prc)
  accumulator = []
  i = 0

  while i < array.length
    accumulator << array[i]
    i += 1
  end
  accumulator
end
puts "My_each tests:"
puts my_each([1, 2, 3]) { |num| puts num } == [1, 2, 3]
puts my_each([1, 2, 3, 4, 5, 6]) { |num| puts num } == [1, 2, 3, 4, 5, 6]
puts 

def my_map(array, &prc)
end

def my_include?(array, &prc)
end

def my_none?(array, &prc)
end

def my_partition(array, &prc)
end

def my_reduce(array, &prc)
end

def my_reject(array, &prc)
end


def my_select(array, &prc)
  selected = []

  array.each do |element|
    if prc.call(element) == true
      selected << element
    end
  end
  selected
end
puts "My_select tests:"
puts my_select([1, 2, 3, 0, -1, -2]) { |num| num > 1} == [2, 3]
puts my_select([1, 2, 3, 4, 5, 6]) { |num| num == 4 } == [4]

def my_sort(array, &prc)

end

def my_uniq(array, &prc)
end

def my_zip(array, &prc)
end

# class Array
#   def my_each(&prc)
#   end
# end

# def my_each(array, &prc)

# end


# puts "My each tests"
# puts [1, 2, 3].my_each { |num| puts num } == [1, 2, 3] 
# puts [1, 2, 3, 4, 5, 6].my_each([1, 2, 3, 4, 5, 6]) { |num| puts num } == [1, 2, 3, 4, 5, 6]

# [1, 2, 3].my_each { |num| puts num } #monkey patched

# my_each([1, 2, 3]) { |num| puts num } #non-monkey patched