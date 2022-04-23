require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class XyzTest < Minitest::Test
  def test_downcase_xyz
    value = 'XYZd'
    assert_equal('xyz', value.downcase)
  end
end
