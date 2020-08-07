class WordChainer

  def self.create_dictionary
    words_array = File.readlines("dictionary.txt").map(&:chomp)
    words_array.to_set
  end

  def initialize(dictionary_file_name)
    @dictionary = WordChainer.create_dictionary
  end

  def adjacent_words(word)
    
  end

  def run(source, target)
    puts "Welcome to word chainer"
    @current_words = source
    @all_seen_words = source

    until @current_words.empty?
      play_around until chain_over?
    end
  end

  def get_input
    puts ""
  end

  def chain_over?
  end

  def is_valid_word?
  end




end