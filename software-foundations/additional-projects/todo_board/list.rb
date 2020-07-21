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

  def print_full_item(index)
    item = @items[index]
    print "#{item.title} #{item.description} #{item.deadline}"
  end

  def print
    puts "------------------------------------------"
    puts @label.upcase
    puts "------------------------------------------"
    puts "Index | Item | Deadline"
    puts "------------------------------------------"

    @items.each.with_index do |item, index|
      puts "#{index} | #{item.title} | #{item.deadline} "
    end
    puts "------------------------------------------"
  end

  def print_priority
  end

  def up(index, amount)
  end

  def down(index, amount)
  end


end