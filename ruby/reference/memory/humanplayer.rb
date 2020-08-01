class HumanPlayer

  attr_accessor :previous_guess
  
  def prompt
    puts "Enter a position: (x y)"
    
    answer = gets.chomp

    until valid_position?(answer)
      puts "Invalid position, try again"
      answer = gets.chomp
    end

    answer.split(" ").map(&:to_i)
  end


end