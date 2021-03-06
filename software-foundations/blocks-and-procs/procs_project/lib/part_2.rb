def reverser(string, &prc)
  letter_string = ""

  alphabet = "abcdefghijklmnopqrstuvwxyz"

  string.each_char do |char|
    if alphabet.include?(char) 
      letter_string << char
    end
  end
  reversed = letter_string.reverse
  prc.call(reversed)
end

def word_changer(string, &prc)
  shouted = []
  words = string.split(" ")
  words.each do |word|
    shouted << prc.call(word)
  end
  shouted.join(" ")
end

def greater_proc_value(num, proc1, proc2)
  value_1 = proc1.call(num)
  value_2 = proc2.call(num)

  if value_1 > value_2
    value_1
  else
    value_2
  end
end

def and_selector(array, proc1, proc2)
  selected = []

  array.each do |num|
    if proc1.call(num) == true && proc2.call(num) == true
      selected << num
    end
  end
  selected
end

def alternating_mapper(array, proc1, proc2)
  new_array = []
  array.each_with_index do |num, index|
    if index.even?
      new_array << proc1.call(num)
    else
      new_array << proc2.call(num)
    end
  end
  new_array
end
