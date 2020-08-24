def bubble_sort(array)
  sorted = false

  until sorted
    sorted = true
    (array.length - 1).times do |i|
      j = i + 1
      if array[i] > array[j]
        array[i], array[j] = array[j], array[i]
        sorted = false
      end
    end
  end
  array
end
# puts "bubble sort test: "
# puts bubble_sort([64, 34, 25, 12, 22, 11, 90])
# puts
def merge(left, right)
  sorted_array = []

  until left.empty? || right.empty?
    if left[0] < right[0]
      sorted_array << left.shift
    else
      sorted_array << right.shift
    end
  end
  sorted_array + left + right
end

def merge_sort(unsorted_array)
  if unsorted_array.length <= 1
    unsorted_array
  else
    middle = (unsorted_array.length) / 2
    left = merge_sort(unsorted_array.slice(0, middle))
    right = merge_sort(unsorted_array.slice(middle, unsorted_array.length))
    merge(left, right)
  end
end
# print merge_sort([4, 3, 2, 1])

def quick_sort(array)
  return array if array.length <= 1
  pivot = array.pop
  less_than = []
  greater_than = []
  sorted_array = []

  array.each do |number|
    if number <= pivot
      less_than << number
    else
      greater_than << number
    end
  end
  sorted_array << quick_sort(less_than)
  sorted_array << pivot
  sorted_array << quick_sort(greater_than)
  sorted_array.flatten
end

def quick_sort(array)
  return array if array.length <= 1

  pivot = array.pop
  less_than = []
  greater_than = []
  sorted_array = []

  array.each do |num|
    if num < pivot
      less_than << num
    else
      greater_than << num
    end
  end

  sorted_array += quick_sort(less_than)
  sorted_array << pivot
  sorted_array += quick_sort(greater_than)
end
# print quick_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])

def binary_search(array, target)
  low = 0
  high = array.length - 1

  while low < high
    middle_index = (low + ((high - low) / 2)) 
    value_at_middle = array[middle_index]
    
    return middle_index if value_at_middle == target

    if value_at_middle < target
      low = middle_index + 1
    else
      high = middle_index - 1
    end
  end
  nil
end
puts binary_search([1, 2, 3, 4, 5 ,6, 7, 8], 7)

def binary_search(array, target)
end
puts binary_search([1, 2, 3, 4, 5 ,6, 7, 8], 7)