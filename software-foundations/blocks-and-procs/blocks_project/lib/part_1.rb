def select_even_nums(arr)
  arr.select { |num| num.even? }
end

def reject_puppies(arr)
  arr.reject { |dog| dog["age"] <= 2}
end

def count_positive_subarrays(arr)
  arr.count { |subarray| subarray.sum > 0 }
end

# def count_positive_subarrays(arr)
#   count = 0

#   sub_arrays = arr.map { |sub_array| sub_array.sum }
#   sub_arrays.each do |number|
#     if number > 0
#       count += 1
#     end
#   end

#   count
# end

def aba_translate(word)
  new_word = ""
  vowels = "aeiou"

  word.each_char do |char|
    if vowels.include?(char)
      new_word << char + "b" + char
    else
      new_word << char
    end
  end
  new_word
end

def aba_array(arr)
  arr.map
end