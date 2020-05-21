def average(num1, num2)
  ave = (num1.to_f + num2.to_f) / 2
end

def average_array(array)
  (array.sum.to_f) / (array.length.to_f)
end

def repeat(string, num)
  new_string = ""
  repeat = string * num 
  new_string << repeat
end

def yell(string)
  yelled = string.upcase + "!"
end

def alternating_case(words)
  new_words = []
  words.split(" ").each_with_index do |word, index|
    if index.even?
      new_words << word.upcase
    else
      new_words << word.downcase
    end
  end
  new_words.join(" ")
end