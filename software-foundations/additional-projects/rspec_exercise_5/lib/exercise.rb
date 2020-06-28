def zip(*arrays)
  final_array = []  
  array_length = arrays[0].length
  i = 0

  while i < array_length
    bucket = []

    arrays.each do |array|
      target_element = array[i]
      bucket << target_element

    end
    final_array << bucket
    i += 1
  end

  final_array
end

def prizz_proc(array, proc1, proc2)
  true_array = []
  array.each do |ele|
    if proc1.call(ele) == true && proc2.call(ele) == false
      true_array << ele
    elsif proc2.call(ele) == true && proc1.call(ele) == false
      true_array << ele
    end
  end
  true_array
end

def zany_zip(*arrays)
  final_array = []  
  longest_length = arrays.length
  i = 0

  arrays.each do |array|
    if array.length > longest_length 
      longest_length = array.length
    end
  end

  while i < longest_length
    bucket = []

    arrays.each do |array|
      target_element = array[i]
      bucket << target_element
    end
    final_array << bucket
    i += 1
  end

  final_array

end

def maximum(array, &prc)
  return nil if array.empty?

  current_highest = 0
  biggest_ele = ""

  array.each do |ele|
    answer = prc.call(ele)
    if answer >= current_highest
      current_highest = answer
      biggest_ele = ele
    end
  end
  biggest_ele
end

def my_group_by(array, &prc)
  grouped_hash = {}

  array.each do |ele|
    keys = prc.call(ele)
    if grouped_hash[keys]
      grouped_hash[keys] += [ele]
    else
      grouped_hash[keys] = [ele]
    end
  end
  grouped_hash
end

def max_tie_breaker(array, proc1, &proc2)
  return nil if array.empty?

  biggest_num = 0
  biggest_word = ""
  
  array.each do |word|
    result2 = proc2.call(word)
    maximum_value = result2

    if maximum_value > biggest_num
      biggest_num = maximum_value
      biggest_word = word
    elsif maximum_value == biggest_num
      result1 = proc1.call(word)
      other_result = proc1.call(biggest_word)

      if result1 > other_result
        biggest_word = word
      end
    end
  end
  biggest_word
end

def silly_syllables(sentence)
  vowels = ["a", "e", "i", "o", "u"]
  new_sentence = ""
  words = sentence.split(" ")
  before_first_vowel = []

  after_last_vowel = []
  
  words.each_char do |char|
    puts char
    # if !new_sentence.include?(vowels)

    if !new_sentence.include?(vowels) && vowels.include?(char)
      new_sentence << char

    i += 1
    end
  end
  new_sentence
end

