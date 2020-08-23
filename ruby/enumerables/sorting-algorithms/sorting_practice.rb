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
  print array
end

def bubble_sort(array)
  sorted = false

  until sorted == true
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
puts bubble_sort([64, 34, 25, 12, 22, 11, 90])

def merge_sort
end

def quick_sort
end

def binary_search
end

