require ./item.rb

class List
  attr_reader :label
  attr_writer :label

  def initialize(label)
    @label = label
    @items = []
  end

  def add_item(title, deadline, description)
  end

  def size
  end

  def valid_index?(index)
  end

  def swap(index_1, index_2)
  end

  def [](index)
  end

  def priority
  end



end