=begin

Reimplement the bubble sort outlined in the preceding 
lecture. The bubble_sort method should accept an array
of numbers and arrange the elements in increasing order.
The method should return the array. Do not use the 
built-in Array#sort
=end 


def bubble_sort(arr)
  sorted = false
  while !sorted
    sorted = true 
    short_arr = arr.length - 1

    (0...short_arr).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end
  arr
end

def bubble_sort(arr)
  sorted = false

  while !sorted 
    sorted = true 
    short_array = arr.length - 1

    (0...short_array).each do |i| 
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end
  arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]


