#  frozen_string_literal: true

require './laba6_3_func.rb'
integ1 = Integral.new(0.1, 1)
integ1.intg(->(x) { Math.sin(x) / x })
integ2 = Integral.new(1.0, 2.0)
integ2.intg(->(x) { Math.tan(x + 1) / (x + 1) })

integ1 = Integral.new(0.1, 1)
integ1.intg do |x|
  Math.sin(x) / x
end
integ2 = Integral.new(1.0, 2.0)
integ2.intg do |x|
  Math.tan(x + 1) / (x + 1)
end
