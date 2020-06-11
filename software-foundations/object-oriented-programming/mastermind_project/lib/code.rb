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

  def self.random(length) #return instance of class initialized by pegs array
    random_pegs = []
    
    keys = POSSIBLE_PEGS.keys #array of keys that happen to be strings
    
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample } 

    Code.new(random_pegs)
  end

  def self.from_string(pegs_string)
    pegs_string.each

    Code.new(array)
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end
  
  def num_exact_matches(guess)
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
