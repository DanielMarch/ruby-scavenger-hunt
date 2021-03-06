require 'test_helper'

class VectorTest < MiniTest::Unit::TestCase
  def setup
    @v = MyVector[1,2]
    @v1 = MyVector[1,2]
    @v2 = MyVector[2,2]
  end

  def test_distance_method
    assert_equal 0, @v.distance(@v)
    assert_equal 1.0, @v2.distance(@v3)
  end

  # def test_distance_class_method
  #   assert_nil MyVector.distance(@v)
  #   assert_equal 1.0, MyVector(@v, @v1, @v2)
  # end
  =begin
  def test_add_int_vec
    @v4 = MyVector[0,1]
    assert equal @v, @v4+1
  end
  =end

  def test_shovel_int
    assert equal @v1 << 1, @v1 + 1
  end

  def test_concatenation_operator
    assert_respond_to @v, :,,
    assert_equal MyVector[1,2,4], @v <<4
  end
end

# require_relative '../lib/myvector.rb'
#
# RSpec.describe My_Vector do
#   context ".add_int_vec" do
#     it "should add an int to a vector"
#       vector = My_Vector.new[8,9]
#       expect
#     end
#   end
# end
