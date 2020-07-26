require_relative "./player.rb"
require 'set'

class Game
  def self.create_dictionary
    words_array = File.readlines("dictionary.txt").map(&:chomp)
    words_array.to_set
  end

  def initialize(players)
    @players = players
    @fragment = ""
    @dictionary = Game.create_dictionary
    @player_index = 0
    @previous_player = nil
    @losses = Hash.new { |losses, player| losses[player] = 0 }
  end

  def run
    puts "welcome to shitty game"
    play_round until game_over?
    puts "#{winner.name} wins!"
  end

  private

  attr_reader :losses

  def current_player
    @players[@player_index]
  end

  def previous_player
    @previous_player
  end

  def next_player!
    @previous_player = current_player
    possible_next_index = (@player_index + 1) % @players.length
    possible_next_player = @players[possible_next_index]
    possible_player_losses = losses[possible_next_player]

    until possible_player_losses < 5
      possible_next_index = (possible_next_index + 1) % @players.length
      possible_next_player = @players[possible_next_index]
      possible_player_losses = losses[possible_next_player]
    end
    
    @player_index = possible_next_index
    current_player
  end

  def take_turn(player)
    letter = nil

    loop do 
      letter = player.guess
      break if valid_play?(letter)
      player.alert_invalid_guess(letter)
    end

    @fragment += letter
  end

  def is_letter?(char)
    char.length == 1 && /[A-Za-z]/ =~ char
  end

  def valid_play?(char)
    return false unless is_letter?(char)
    fragment_candidate = @fragment + char
    @dictionary.any? do |word| 
      word.start_with?(fragment_candidate) 
    end
  end

  def play_round
    until is_word?(@fragment)
      puts "The fragment is currently: #{@fragment}"
      take_turn(current_player)
      next_player!
    end

    update_standings
  end

  def update_standings
    puts "#{previous_player.name} lost with #{@fragment}"

    losses[previous_player] += 1

    if losses[previous_player] == 5
      puts "#{previous_player.name} has been eliminated" 
    end

    display_losses
  end

  def display_losses
    losses.each do |player, count|
      puts "#{player.name}  |  #{record(player)}"
    end
  end

  def record(player)
    losses_for_player = losses[player]
    "GHOST"[0...losses_for_player]
  end

  def game_over?
    active_players.length == 1
  end

  def active_players
    @players.filter do |player|
      losses[player] < 5
    end
  end

  def is_word?(string)
    @dictionary.include?(string)
  end

  def winner
    active_players[0]
  end
end

player_one = Player.new("Louis")
player_two = Player.new("Sandy")
players = [player_one, player_two]
game = Game.new(players)
game.run