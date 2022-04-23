require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class XyzTest < Minitest::Test
  def test_xyz_not_in_list
    list = ['xyz']
    refute_includes(list, 'xyz')
  end
end
