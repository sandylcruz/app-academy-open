# def zip(*array)
#   pairs = []
#   i = 0
#   j = 0

#   array.each_with_index do |sub_array, ix1|
#     sub_array.each do |ele, ix2|
#       pairs << ele[ix2]
#       j += 1
#     end
#     pairs << ele[ix1]
#     i += 1
#   end
#   pairs
# end

# def zip(*array)
#   i = 0
#   pairs = []
#   array.each_with_index do |sub_array, i|
#     pairs << sub_array[i]
#     i += 1
#   end
#   pairs
# end

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

def zany_zip(*array)
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

