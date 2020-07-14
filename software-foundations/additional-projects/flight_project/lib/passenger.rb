class Passenger

  def initialize(name)
    @name = name
    @flight_numbers = []
  end

  def name
    @name
  end

  def has_flight?(num)
    if @flight_numbers.include?(num)
      return true
    else
      return false
    end
  end



end