require 'minitest/autorun'

class IncludeTest < Minitest::Test
  def test_xyz_in_list
    list = ['xyz']
    assert_includes(list, 'xyz')
  end
end
