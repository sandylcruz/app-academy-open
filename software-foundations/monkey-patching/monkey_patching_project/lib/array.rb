# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  
  def span
    return nil if self.empty?
    ascending_order = self.sort
    difference = ascending_order[-1] - ascending_order[0]
    return difference
  end

  def average
    return nil if self.empty?
  end

  def median
    return nil if self.empty?

  end

  def my_count(value)
  end

  def my_index(array, arg)
    array.each_with_index do |ele, index|
      if array.include?(arg)
        return index
      end
    end
    
  end

  def my_uniq(array)
    
  end

  def my_transpose(array)
  end

end
