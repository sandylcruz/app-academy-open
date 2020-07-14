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

  def add_flight(num)
    if has_flight?(num) == false
      @flight_numbers << num.upcase
    end
  end

end