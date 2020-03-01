# tui_for_solve.rb
require_relative 'solve.rb'
print 'x = '
a = gets.to_f
print "cos((x^2)/(x-2)3x) = "
puts solve(a)
