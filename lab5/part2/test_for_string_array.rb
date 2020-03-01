# test_for_sting_array.rb
require './string_array.rb'
require 'minitest/autorun'
# Test class
class Test1 < MiniTest::Unit::TestCase
  def test_1
    inp = ['nqweq', 'lqweqwe', 'qqq', 'lyuj', 'ndas', '123', 'asddsf']
    a = Text.new
    a.str = inp.join(" ")
    assert_equal(inp, a.correct)
  end

  def test_2
    inp = ['lqweq', 'lqweqwe', 'nqq', 'lyuj', 'fdsadas', '123', 'asddsf']
    b = Text.new
    b.str = inp.join(" ")
    assert_equal(inp, b.correct)
  end
end
