

def [](position)
  row = position[0]
  column = position[1]
  @grid[row][column]
end

def []=(value)
  row = position[0]
  column = position[1]
  @grid[row][column] = value
end

