require_relative "room"

class Hotel
  def initialize(name, hash)
    @name = name
    @rooms = {}
  end

  def name
    cap_names = @name.split(" ").map { |word| word.capitalize }
    cap_names.join(" ")
  end

  def rooms 
    @rooms
  end

  def room_exists?(room_name)
    if self.rooms.include?(room_name)
      return true
    else
      return false
    end
  end

  def check_in(person, room)
    if room_exists?(room)
      @add_occupant << person
      print "Check in succesful"
    else
      print "Sorry room does not exist"
    end
  end

  def has_vacancy?

  end

  def list_rooms
    
  end
end
