require "set"

class WordChainer
  def self.create_dictionary
    words_array = File.readlines("dictionary.txt").map(&:chomp)
    words_array.to_set
  end

  def initialize(dictionary_file_name)
    @dictionary = WordChainer.create_dictionary
  end

  def is_valid_word?(word)
    @dictionary.include?(word)
  end

  def adjacent_words(word)
    found_words = []
    alphabet = ("a".."z").to_a
    chars = word.split("")
    i = 0

    while i < chars.length
      j = 0
      while j < alphabet.length
        current_letter = chars[i]
        alphabet_letter = alphabet[j]
        unless current_letter == alphabet_letter
          prefix = ""
          suffix = ""
          target = alphabet[j]
          word = "adios"
          # puts "#{current_letter}, #{alphabet_letter}"
          if is_valid_word?(word)
           
        
            found_words << word
          end
        end
    

        j += 1
      end
      i += 1
    end
   
    found_words
  end


  # def neighbor_words(word)
  #   possible_words = []
  #   alphabet = ("a".."z").to_a
  #   chars = word.split("")

  #   alphabet.each do |letter|
  #     i = 0

  #     while i < alphabet.length
  #       possible_words << word[i]
  #       i += 1
  #     end

  #   end
  #   possible_words
  # end
  # def adjacent_words(word)
  #   length = word.length

  #   word.split("").with_index do |char, index|
  #     Set.include?(word)

  #   end
  # end

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



end
word_chains = WordChainer.new("dictionary.txt")
puts word_chains.adjacent_words("ab")
puts word_chains.is_valid_word?("catc")