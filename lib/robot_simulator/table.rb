class Table
  def initialize(width, height)
    raise 'invalid width' if width <= 0
    raise 'invalid height' if height <= 0

    @width = width
    @height = height
  end

  def contains(coordinate)
    coordinate.within(0, 0, @width, @height)
  end
end