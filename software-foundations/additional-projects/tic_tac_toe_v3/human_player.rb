class HumanPlayer
  attr_reader :mark

  def initialize(mark_value)
    @mark = mark_value
  end

  def get_position(legal_positions)
    puts "Enter a position as two numbers with a space between them:"
    position = gets.chomp.split(" ").map(&:to_i)
      
    if !legal_positions.include?(position)
      puts "#{position} is not a legal position" 
    elsif position.length != 2
      raise 'sorry, that was invalid :(' 
    end

    position
  end
end