require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NilTest < Minitest::Test
  def test_nil
    value = 'hi'
    assert_nil(value)
  end
end
