require_relative "room"

class Hotel
  def initialize(name, capacities)
    @name = name
    @rooms = {}

    capacities.each do |room_name, capacity|
      @rooms[room_name] = Room.new(capacity)
    end
  end

  def name
    @name.split(" ").map(&:capitalize).join(" ")
  end

  def rooms 
    @rooms
  end

  def room_exists?(name)
    if @rooms.has_key?(name)
      return true
    else
      return false
    end
  end

  def check_in(person, room)
    if self.room_exists?(room)
      if @rooms[room].add_occupant(person)
        puts "Check in succesful"
      else
        puts "Sorry, room is full"
      end
    else 
      puts "Sorry room does not exist"
    end
  end
  

  def has_vacancy?

  end

  def list_rooms

  end
end
