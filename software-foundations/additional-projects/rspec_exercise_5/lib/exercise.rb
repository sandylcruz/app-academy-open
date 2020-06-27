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
end

def max_tie_breaker(array, proc1, proc2)
end

def silly_syllables(sentence)
end

