class Coordinate
  def initialize(x, y, facing)
    @x = x
    @y = y
    @facing = facing
  end

  def next
    x, y = @@next_position_resolver[@facing].call(@x, @y)
    Coordinate.new(x, y, @facing)
  end

  def within(x_from, y_from, x_to, y_to)
    @x >= x_from && @x <= x_to && @y >= y_from && @y <= y_to
  end

  def left
    Coordinate.new(@x, @y, @@left_direction_map[@facing])
  end

  def right
    Coordinate.new(@x, @y, @@right_direction_map[@facing])
  end

  def to_s
    "#{@x}, #{@y}, #{@facing}"
  end

  @@next_position_resolver = {
      :NORTH => lambda {|x, y| return x, y + 1},
      :SOUTH => lambda {|x, y| return x, y - 1},
      :WEST => lambda {|x, y| return x - 1, y},
      :EAST => lambda {|x, y| return x + 1, y}
  }

  @@left_direction_map = {
      :NORTH => :WEST,
      :SOUTH => :EAST,
      :WEST => :SOUTH,
      :EAST => :NORTH
  }

  @@right_direction_map = {
      :NORTH => :EAST,
      :SOUTH => :WEST,
      :WEST => :NORTH,
      :EAST => :SOUTH
  }
end