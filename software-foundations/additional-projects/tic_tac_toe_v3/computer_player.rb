class ComputerPlayer
  attr_reader :mark

  def initialize(mark_value)
    @mark = mark_value
  end

  def get_position(legal_positions)
    choice = legal_positions.sample
    puts "The computer chose position #{choice}"
    choice
  end
end