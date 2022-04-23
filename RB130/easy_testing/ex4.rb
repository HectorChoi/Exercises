require 'minitest/autorun'

class EmptyTest < Minitest::Test
  def test_empty
    list = [1, 2, 3]
    assert_empty(list)
  end
end
