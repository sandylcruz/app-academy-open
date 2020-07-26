class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def guess
    puts "Enter a string"
    answer = gets.chomp.downcase
  end

  def alert_invalid_guess(fragment)
    puts "Hey, #{fragment} is no good"
  end
end