class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  def self.valid_pegs?(chars) #class method
    chars.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
  end

  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = chars.map(&:upcase)
    else
      raise "error, peg invalid"
    end
  end

  def self.random(length) #return instance of class
    random_pegs = []
    
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample } 

    Code.new(random_pegs)
  end

  def self.from_string(string) #class method
    Code.new(string.split(""))
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    count = 0
    (0...guess.length).each do |i| 
      count += 1 if self[i] == guess[i]
    end
    count
  end

  def num_near_matches(guess)
  end

  def ==(arg)
    if arg = self
      return true
    else
      return false
    end
  end






end
