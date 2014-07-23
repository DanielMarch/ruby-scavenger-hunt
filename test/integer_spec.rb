require 'test_helper'

class IntegerTest < Minitest::Unit::TestCase
  def test_factor
    assert_respond_to 12, :factors
    assert_equal [2,3,4,6], 12.factors
    assert_equal [2,4,5,10], 20.factors
  end
end
