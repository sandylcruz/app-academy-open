class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
  end

  def initialize(pegs_array)
    if Code.valid_pegs?(pegs_array)
      @pegs = pegs_array.map do |peg|
        peg.upcase
      end
    else
      raise "error, peg invalid"
    end
  end

  def pegs
    @pegs
  end

  def self.random(num)
    random_array = []
    
    return POSSIBLE_PEGS.rand(num)
  end

  def self.from_string
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
  end







end
