class Player
  def get_move
    puts 'enter a position'
    input = gets.chomp.split(' ')
    position_one = input[0].to_i
    position_two = input[1].to_i
    [position_one, position_two]
  end
end