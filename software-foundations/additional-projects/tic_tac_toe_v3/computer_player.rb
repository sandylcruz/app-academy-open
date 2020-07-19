class ComputerPlayer

  def initialize(mark_value)
    @mark = mark_value
  end

  def get_position(legal_positions)
    positions = legal_positions
    positions.sample
  end


end