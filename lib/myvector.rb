require 'matrix'

attr_reader :cosign, :radian

class MyVector < Vector
  def distance(v)
    Math.sqrt((self[0]-v[0])**2+(self[1]-v[1])**2)
  end

  def self.pathlength(*vectors)

  end

  def add_int_vec(v, x)
    v + x
  end

  # def shovel_int(x)
  #   self << x
  # end

  def <<(i)
    MyVector.elements(self.to_a << i)
  end

  def cosign(v1, v2)
    @cosign = (((v1[0] * v2[0]) + (v1[1] * v2[1])) / ((Math.sqrt(v1[0] + v1[2])) * (Math.sqrt(v2[0] + v2[2]))))
  end

  def radian
    @radian = cosign * Math::PI / 180
  end
end
