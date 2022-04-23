require 'minitest/autorun'

class NumericTest < Minitest::Test
  def test_is_numeric
    value = 0
    assert_instance_of(Numeric, value)
  end
end
