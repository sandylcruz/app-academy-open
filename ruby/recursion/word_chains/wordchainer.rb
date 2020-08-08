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
    i = 0

    while i < word.length
    
      j = 0
      while j < alphabet.length
        current_letter = word[i]
        alphabet_letter = alphabet[j]
        
        unless current_letter == alphabet_letter
          prefix = word[0...i]
          suffix = word[(i + 1)..-1]

          potential_word = prefix + alphabet_letter + suffix
  
          if is_valid_word?(potential_word) && !found_words.include?(potential_word)       
            found_words << potential_word
          end
        end
        j += 1
        
      end
      i += 1
    end
    found_words
  end

  def run(source, target)
    puts "Welcome to word chainer"
    @current_words = [source]
    @all_seen_words = { source => nil }

    until @current_words.empty? || @all_seen_words.include?(target)
      explore_current_words
    end
    build_path(target)
  end

  def build_path(target)
    path = []
    current_word = target

    until current_word.nil?
      path << current_word
      current_word = @all_seen_words[current_word]
    end
    path.reverse
  end

  def explore_current_words
    new_current_words = []
    @current_words.each do |current_word|
      potential_words = adjacent_words(current_word)

      potential_words.each do |potential_word|
        unless @all_seen_words.include?(potential_word)
          new_current_words << potential_word
          @all_seen_words[potential_word] = current_word
        end
      end
      @current_words = new_current_words
    end
  
  end
end
word_chains = WordChainer.new("dictionary.txt")
# puts word_chains.adjacent_words("zen")
print word_chains.run("cat", "zoo")
# puts word_chains.adjacent_words("cat")
# puts word_chains.adjacent_words("apple")
# puts word_chains.is_valid_word?("catc")