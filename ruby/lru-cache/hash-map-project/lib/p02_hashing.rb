class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    hash_number = 0

    self.each_with_index do |element, index|
      # IF WE WERE DOING THIS FOR REAL THEN WE'D HAVE TO MAKE SURE EVERY DATA TYPE CAN BE CONVERTED INTO A NUMBER
      element_with_index = element.hash ^ index
      combined_hash = element_with_index.hash
      hash_number ^= combined_hash
    end

    hash_number
  end

  def merge_sort
    return self if self.length <= 1

    middle_index = self.length / 2
    midpoint = self[middle_index]
    left = self[0...middle_index].merge_sort
    right = self[middle_index..-1].merge_sort

    merge(left, right)
  end

  private

  def merge(left, right)
    sorted = []

    until left.empty? || right.empty?
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end

    sorted + left + right
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
    hash_array = self.to_a
   
    sorted_array = hash_array.sort
    flattened_sorted_array = sorted_array.flatten

    hash_keys = self.keys

    sorted_keys = hash_keys.merge_sort
    accumulator = 0

    sorted_keys.each do |key|
      value = self[key]
      combined = key.hash ^ value.hash
      accumulator = accumulator ^ combined
    end
    accumulator
  end
end


