def select_even_nums(arr)
  even_nums = arr.select { |num| num.even? }
  even_nums
end

def reject_puppies(arr)
  arr.reject { |dog| dog["age"] <= 2}
end

def count_positive_subarrays(arr)
  count = 0
  sums = arr.each.count 
  sums
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
  i = 0
  new_word_array = []

  while i < word.length
    if is_vowel?(chars)
      new_word_array << "2"
    else
      new_word_array << chars
    end
    i += 1
  end
  return new_word_array
end

def aba_array(arr)
  arr.map
end