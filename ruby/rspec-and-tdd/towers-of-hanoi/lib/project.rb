class Game
  def initialize
    @stacks = [[1, 2, 3], [], []]
    
  end

  def play
    until won?
      render
      puts "Where should we move from?"
      source = gets.chomp.to_i
      
      puts "Where should we move to?"
      destination = gets.chomp.to_i

      move(source, destination)
    end
  end

  def empty?(index)
    @stacks[index].empty?
  end

  def valid_move?(source, destination)
    return false if empty?(source)
    return true if empty?(destination)

    item_at_top_of_destination = @stacks[destination]
    item_at_source = @stacks[source]

    item_at_source < item_at_top_of_destination
  end

  def move(source, destination)
    if valid_move?(source, destination)
      source_stack = @stacks[source]
      destination_stack = @stacks[destination]
      
      item_to_move = source_stack.shift

      destination_stack.unshift(item_to_move)
    end
  end

  def won?
    last_rod = @stacks[-1]
    last_rod == [1, 2, 3]
  end

  def render
    system("clear")

    row_strings = (0..2).map do |i|
      row_string = ""

      (0..2).each do |j|
        stack = @stacks[j]
        element = stack[i]

        if element.nil?
          row_string += " _ "
        else
          row_string += " #{element} "
        end

      end

      row_string
    end
    
    row_strings.each { |row_string| puts row_string }
  end

end


game = Game.new
game.play