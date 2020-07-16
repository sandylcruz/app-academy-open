def initialize(mark_value)
  @mark = mark_value
end

def get_position
  puts "Enter a position as two numbers with a space between them:"
  position = gets.chomp.to_i.split(" ")
  
  if position.length != 2
    puts "Invalid position"
  end

  position 
end