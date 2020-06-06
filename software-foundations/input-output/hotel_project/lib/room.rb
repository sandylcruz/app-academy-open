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
    if @occupants < @capacity
      return false
    else
      return true
    end
  end

  def available_space
    return @capacity - @occupants
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
