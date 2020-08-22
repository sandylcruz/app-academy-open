class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups.each_with_index do |cup, index|
      if index  != 6 && index != 13
        4.times do
          cup << :stone
        end
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if !start_pos.between?(0, 12)
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    cup_index = start_pos

    until stones.empty?
      cup_index = (cup_index + 1) % 14
      
      if cup_index == 6 && current_player_name == @name2
        cup_index += 1
      elsif cup_index == 13 && current_player_name == @name1
        cup_index = 0
      end

      current_cup = @cups[cup_index]
      stone = stones.pop
      current_cup << stone
    end

    render
    next_turn(cup_index, current_player_name)
  end

  def next_turn(ending_cup_idx, current_player_name)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 && current_player_name == @name1
      :prompt
    elsif ending_cup_idx == 13 && current_player_name == @name2
      :prompt 
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? { |cup| cup.empty? } ||
    @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    player1_count = @cups[6].count
    player2_count = @cups[13].count

    if player1_count == player2_count
      :draw
    else
      player1_count > player2_count ? @name1 : @name2
    end
  end
end
