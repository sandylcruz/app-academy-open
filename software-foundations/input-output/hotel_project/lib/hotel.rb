require_relative "room"

class Hotel
  def initialize(name, hash)
    @name = name
    @rooms = {}
  end

  def name
    cap_names = @name.upcase
  end

  def rooms 
    @rooms
  end

  def room_exists?(room_name)
     
  end



end
