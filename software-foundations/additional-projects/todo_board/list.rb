require ./item.rb

class List
  attr_accessor :label

  def initialize(label)
    @label = label
    @items = []
  end

  def add_item(title, deadline, description)
    return false if !Item.valid_date?(deadline)
    @items << Item.new(title, deadline, description)
  end

  def size
    @items.length
  end

  def valid_index?(index)
    index_range = (0...List.length)

    if !index_range.include?(index)
      return false
    else
      return true
    end
  end

  def swap(index_1, index_2)
  end

  def [](index)
  end

  def priority
  end



end