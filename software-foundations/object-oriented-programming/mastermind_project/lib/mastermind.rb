require_relative "code"

class Mastermind

  def initialize(length)
    @secret_code.random(array)
  end

  def print_matches
  end

  def ask_user_for_guess
    print "Enter a code "
    answer = gets.chomp
  end
 
end
