class HumanPlayer
  attr_accessor :previous_guess

  def prompt(guess_number)
    puts "Enter a position: (x y)"
    gets.chomp
  end

  def to_s
    "Human"
  end
end

