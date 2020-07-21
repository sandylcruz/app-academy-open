require "./item.rb"

class List
  attr_accessor :label

  def initialize(label)
    @label = label
    @items = []
  end

  def add_item(title, deadline, description = "")
    return false if !Item.valid_date?(deadline)
    @items << Item.new(title, deadline, description)
    return true
  end

  def size
    @items.length
  end

  def valid_index?(index)
    index_range = (0...@items.length)

    if !index_range.include?(index)
      return false
    else
      return true
    end
  end

  def swap(index_1, index_2)
    return false if !valid_index?(index_1) || !valid_index?(index_2)
   
    @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
    return true
  end

  def [](index)
    @items[index]
  end

  def priority
    @items[0]
  end
end