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

  while !left.empty? || !right.empty?
    if left[0] < right[0]
      sorted_array << left.shift
    else
      sorted_array << right.shift
    end
  end
  sorted_array.concat(left).concat(right)
end
puts merge([3, 2, 1], [4, 5, 6])

def merge_sort(unsorted_array)
  if unsorted_array.length <= 1
    return unsorted_array
  else
    middle = (unsorted_array.length) / 2
    left = unsorted_array.slice(0, middle)
    right = unsorted_array.slice(middle, unsorted_array.length)
  end
  merge(left, right)
end
puts merge_sort([10, 9, 8, 7, 6, 5])



def quick_sort(array)
end

def binary_search
end
