# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  
  def span
    return nil if self.empty?
    ascending_order = self.sort
    difference = ascending_order[-1] - ascending_order[0]
  end

  def average
    return nil if self.empty?
    (self.sum * 1.0) / self.length * 1.0
  end

  def median
    return nil if self.empty?
    sorted = self.sort

    if sorted.length.odd?
      mid_index = (sorted.length) / 2
      return sorted[mid_index]
    else
      mid_index = self.length / 2
      first_ele = sorted[mid_index]
      second_ele = sorted[mid_index - 1]
      return (first_ele + second_ele) / 2.0
    end
  end

  def counts
    result_hash = Hash.new(0)
    self.each do |letter|
      result_hash[letter] += 1
    end
    result_hash
  end

  def my_count(arg)
    count = 0

    self.each do |ele|
      if ele == arg 
        count += 1
      end
    end
    count
  end

  def my_index(arg)
    self.each_with_index do |ele, index|
      if ele == arg
        return index
      end
    end
    return nil
  end

  def my_uniq
    unique_array = []
    self.each do |ele|
      unless unique_array.include?(ele)
        unique_array << ele
      end
    end
    unique_array
  end

  def my_transpose
    new_arr = []
   
    (0...self.length).each do |row|
      new_row = []

      (0...self.length).each do |col|
        new_row << self[col][row]
      end
      new_arr << new_row
    end
    new_arr 
  end

end
