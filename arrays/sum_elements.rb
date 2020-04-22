=begin
Write a method sum_elements(arr1, arr2) that takes in two arrays.
The method should return a new array containing the results of adding
together corresponding elements of the original arrays.
You can assume the arrays have the same length.
=end

def sum_elements(arr1, arr2)
  combined_array = []

  i = 0

  while i < arr1.length
    combined_element = arr1[i] + arr2[i]
    combined_array << combined_element
    i += 1
  end
  combined_array
end
print sum_elements([7, 4, 4], [3, 2, 11])
