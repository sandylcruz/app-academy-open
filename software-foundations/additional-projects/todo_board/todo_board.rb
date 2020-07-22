require './list.rb'

class TodoBoard
  def initialize(label)
    @list = List.new(label)
  end

  def get_command
    print "Enter a command:"
    cmd, *args = gets.chomp.split(" ")

    case cmd
    when "mktodo"
      @list.add_item(*args)
    when "up"
      @list.up(index, amount = 1)
    when "down"
      @list.down(index, amount = 1)
    when "swap"
      @list.s    f5wap(index_1, index_2)
    when "sort"
      @list.sort_by_date!
    when "priority"
      @list.print_priority(index)
    when "print"
      @list.print
    when  "quit"
      return false
    else
      puts "invalid command"
    end
    true
  end
 

  def run
    loop do
      commandvalue = get_command
      break if commandvalue == false
    end
  end




end