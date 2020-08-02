class HumanPlayer
  attr_accessor :previous_guess

  def prompt
    puts "Enter a position: (x y)"
    gets.chomp
  end
end

