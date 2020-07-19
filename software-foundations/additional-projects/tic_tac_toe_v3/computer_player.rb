class ComputerPlayer

  def initialize(mark_value)
    @mark = mark_value
  end

  def get_position(legal_positions)
    positions = legal_positions
    choice = positions.sample
    puts "The computer chose position #{choice}"
    choice
  end
  

end