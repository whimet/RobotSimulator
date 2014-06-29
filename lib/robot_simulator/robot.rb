class Robot
  def initialize(table)
    @table = table
    @coordinate = nil
  end

  def place(x, y, facing)
    new_coordinate = Coordinate.new(x, y, facing)
    @coordinate = new_coordinate if x >= 0 && y >= 0 && @table.contains(new_coordinate)
  end

  def move
    @coordinate = @coordinate.next if @coordinate && @table.contains(@coordinate.next)
  end

  def left
    @coordinate = @coordinate && @coordinate.left
  end

  def right
    @coordinate = @coordinate && @coordinate.right
  end

  def report
    @coordinate && @coordinate.to_s || 'UNPLACED'
  end
end