def select_even_nums(arr)
  arr.select { |num| num.even? }
end

def reject_puppies(arr)
  arr.reject { |dog| dog["age"] <= 2}
end

def count_positive_subarrays(arr)
  count = 0

  sub_arrays = arr.map { |sub_array| sub_array.sum }

  sub_arrays.each do |number|
    if number > 0
      count += 1
    end
  end

  count

end

def is_vowel?(char)
  if ["a", "e", "i", "o", "u"].include?(char)
    return true
  else
    return false
  end
end

def aba_translate(word)
  chars = word.split("")
  new_word_array = []

  chars = word.split("").each_with_index do |char, index|
    if is_vowel?(char)

      new_word_array << "2"
    else
      new_word_array << char
    end
    i += 1
  end

  return new_word_array
end

def aba_array(arr)
  arr.map
end