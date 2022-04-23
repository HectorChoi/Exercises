require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class KindOfTest < Minitest::Test
  def test_is_kind_of_numeric
    value = 0
    assert_kind_of(Numeric, value)
  end
end
