require 'minitest/autorun'

class List
  def process
    self
  end
end

class ListTest < Minitest::Test
  def test_process
    list = List.new
    assert_same(list, list.process)
  end
end
