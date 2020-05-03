=begin
Write a method hand_score that takes in a string representing
a hand of cards and returns it's total score. You can
assume the letters in the string are only A, K, Q, J.
A is worth 4 points, K is 3 points, Q is 2 points, and
J is 1 point. The letters of the input string not necessarily
uppercase.
=end

def hand_score(hand)
  uppcase_string = hand.upcase
  characters = uppcase_string.split("")
  count = 0

  characters.each do |character|
    if character == "A"
      count += 4
    elsif character == "K"
      count += 3
    elsif character == "Q"
      count += 2
    elsif character == "J"
      count += 1
    end
  end

  return count

end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9
