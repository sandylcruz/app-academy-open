class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    hash_number = 0

    self.each_with_index do |element, index|
      # IF WE WERE DOING THIS FOR REAL THEN WE'D HAVE TO MAKE SURE EVERY DATA TYPE CAN BE CONVERTED INTO A NUMBER
      element_with_index = element ^ index
      combined_hash = element_with_index.hash
      hash_number ^= combined_hash
    end

    hash_number
  end
end

class String
  def hash
    characters = self.chars

    array_of_numbers = characters.map do |char|
      char.ord
    end

    array_of_numbers.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
