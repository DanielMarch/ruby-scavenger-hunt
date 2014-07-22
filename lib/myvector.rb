class My_Vector < Vector

  attr_reader :x1, :y1, :x2, :y2, :distance

  def initialize(a, b, x, y)
    @x1 = a.to_i
    @y1 = b.to_i
    @x2 = x.to_i
    @y2 = y.to_i
  end

  def distance
    @distance = Math.sqrt(((x2 - x1) * 2) + ((y2 - y1) * 2))
    return distance
  end
end
