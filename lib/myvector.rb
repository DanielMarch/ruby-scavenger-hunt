require 'matrix'

class My_Vector < Vector
  def distance(v)
    Math.sqrt((self[0]-v[0])**2+(self[1]-v[1])**2)
  end

  def self.pathlength(*vectors)

  end

  def add_int_vec(v, x)
    v + x
  end
end
