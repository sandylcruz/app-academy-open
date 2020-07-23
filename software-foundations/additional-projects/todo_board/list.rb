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
  # my_list = List.new('Groceries')
  # my_list.add_item('cheese', '2019-10-25', 'Get American and Feta for good measure.')
  # my_list.add_item('toothpaste', '2019-10-25')
  # my_list.add_item('shampoo', '2019-10-24')
  # puts swap(0, 1)

  def [](index)
    @items[index]
  end

  def priority
    @items[0]
  end

  def print_full_item(index)
    item = @items[index]
    return nil if index.nil?

    puts "------------------------------------------"
    puts "#{item.title} #{item.description} #{item.deadline}"
    puts "------------------------------------------"
  end

  def print
    puts "------------------------------------------"
    puts @label.upcase
    puts "------------------------------------------"
    puts "Index | Item | Deadline"
    puts "------------------------------------------"

    @items.each.with_index do |item, index|
      puts "#{index} | #{item.title} | #{item.deadline}"
    end
    puts "------------------------------------------"
  end

  def print_priority
    print_full_item(0)
  end

  def up(index, amount = 1)
    return false if !valid_index?(index)
  
    while amount > 0 && index != 0
      swap(index, index - 1)
      amount -= 1
      index -= 1
    end
    return true
  end

  def down(index, amount = 1)
    return false if !valid_index?(index)
  
    while amount > 0 && index != (size - 1)
      swap(index, index + 1)
      amount += 1
      index += 1
    end
    return true
  end

  def sort_by_date!
    @items.sort_by! { |item| item.deadline }
  end

end