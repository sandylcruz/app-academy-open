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

  def my_count(value)
  end

  # def my_index(array, arg)
  #   array.each_with_index do |ele, index|
  #     if array.include?(arg)
  #       return index
  #     end
  #   end
    
  # end

  def my_uniq(array)
    
  end

  def my_transpose(array)
  end

end
