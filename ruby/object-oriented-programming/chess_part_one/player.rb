class Player
  attr_reader :color, :name
  
  def initialize(color, display, name)
    @color = color
    @display = display
    @name = name
  end
end