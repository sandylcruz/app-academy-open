class Room

  def initialize(num)
    @capacity = num
    @occupants = []
  end

  def capacity
    @capacity
  end

  def occupants
    @occupants
  end

  def full?
    num_occupants = @occupants.length
    if num_occupants < @capacity
      return false
    else
      return true
    end
  end

  def available_space
    num_occupants = @occupants.length
    return @capacity - num_occupants
  end

  def add_occupant(name)
    if self.full?
      return false
    else
      @occupants << name
      return true
    end
  end
end
