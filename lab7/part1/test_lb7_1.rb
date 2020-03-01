# test_lb7_2.rb
require './lb7_1.rb'
require 'minitest/autorun'
# Test class
class Test1 < MiniTest::Unit::TestCase

  def test_1
    a = Text.new
    print " File F :"
    a.pF
    a.make
    print " File H :"
    a.pH
  end

end
