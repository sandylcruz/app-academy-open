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

  def initialize(chars)
  end

  def pegs
    # @pegs = pegs
  end

  def random
  end

  def from_string
  end

  def [](position)
    @line[position]
  end

  def length
    @pegs.length
  end
  
  def num_exact_matches
  end

  def num_near_matches
  end

  def ==
  end







end
