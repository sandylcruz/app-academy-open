# def my_all?(array, &prc)
#   array.each do |element|
#     return false if prc.call(element) == false
#   end
#   return true
# end
# puts "My_all tests:"
# puts my_all?([0, 1, 2, 3]) { |num| num > 1 } == false
# puts my_all?([1, 2, 3]) { |num| num < 4 } == true
# puts

# def my_any?(array, &prc)
#   i = 0

#   while i < array.length
#     if prc.call(array[i]) == true
#       return true
#     end
#     i += 1
#   end
# end
# puts "My_any tests:"
# puts my_any?([1, 2, 3]) { |num| num > 1 } == true
# puts my_any?([1, 2, 3]) { |num| num < 4 } == true
# puts

# def my_count(array, &prc)
#   count = 0
#   array.each do |element|
#     if prc.call(element) == true
#       count += 1
#     end
#   end
#   count
# end
# puts "My_count tests:"
# puts my_count([1, 2, 4, 2]) { |num| num % 2 == 0} == 3
# puts my_count([1, 2, 4, 2]) { |num| num.odd? } == 1
# puts my_count([1, 2, 4, 2]) { |num| num.even? } == 3
# puts

# def my_each(array, &prc)
#   accumulator = []
#   i = 0

#   while i < array.length
#     accumulator << array[i]
#     i += 1
#   end
#   accumulator
# end
# puts "My_each tests:"
# puts my_each([1, 2, 3]) { |num| puts num } == [1, 2, 3]
# puts my_each([1, 2, 3, 4, 5, 6]) { |num| puts num } == [1, 2, 3, 4, 5, 6]
# puts 

def my_map(array, &prc)
end

def my_include?(array, target)
  array.each do |element|
    if element == target
      return true
    else
      return false
    end
  end
end
puts my_include?([1, 2, 3, 4, 5, 6], 4) == true
# puts my_include?([1, 2, 3, 4, 5, 6], 7) == false
# puts my_include?(["cat", "dog", "banana"], "cat") == true

def my_none?(array, &prc)
end

def my_partition(array, &prc)
end

def my_reduce(array, &prc)
end

# def my_reject(array, &prc)
#   i = 0
#   rejected = []

#   while i < array.length
#     if prc.call(array[i]) == false
#       rejected << array[i]
#     end
#     i += 1
#   end
#   rejected
# end
# puts "My_reject tests:"
# puts my_reject([1, 2, 3]) { |num| num > 1 } == [1]
# puts my_reject([1, 2, 3]) { |num| num == 4 } == [1, 2, 3]
# puts

# def my_select(array, &prc)
#   selected = []

#   array.each do |element|
#     if prc.call(element) == true
#       selected << element
#     end
#   end
#   selected
# end
# puts "My_select tests:"
# puts my_select([1, 2, 3, 0, -1, -2]) { |num| num > 1} == [2, 3]
# puts my_select([1, 2, 3, 4, 5, 6]) { |num| num == 4 } == [4]

def my_uniq(array)
  unique_array = []

  array.each do |element|
    if !unique_array.include?(element)
      unique_array << element
    end
  end
  unique_array
end
puts "My_uniq tests:"
puts my_uniq([1, 2, 2, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
puts my_uniq([1, 2, 0, -2, 3, 4, 5]) == [1, 2, 0, -2, 3, 4, 5]
puts my_uniq(["cat", "cat", "banana"]) == ["cat", "banana"]
puts my_uniq(["dog", "cat", "banana"]) == ["dog", "cat", "banana"]

# [1, 2, 3].my_each { |num| puts num } #monkey patched
# my_each([1, 2, 3]) { |num| puts num } #non-monkey patched