require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class MyTest < Minitest::Test
  def test_value_odd
    value = 8
    assert(value.odd?, 'Value is not odd')
  end
end
