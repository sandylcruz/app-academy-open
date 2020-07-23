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
      index = args[0]
      @list.up(index, amount = 1)
    when "down"
      index = args[0]
      @list.down(index, amount = 1)
    when "swap"
      first = args[0].to_i
      second = args[1].to_i
      @list.swap(first, second)
    when "sort"
      @list.sort_by_date!
    when "priority"
       @list.print_priority
    when "print"
      if args.empty?
        @list.print
      else
        index = args[0]
        @list.print_full_item(index.to_i)
      end
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