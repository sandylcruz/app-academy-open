class Player
  def get_move
   positions_array = []
    puts "Enter a position with coordinates separated with a space like '4 7' "
    positions = gets.chomp.to_i
    positions_array << positions
    # positions.split(" ").map do |position|
    positions_array
  end

   
  
end
