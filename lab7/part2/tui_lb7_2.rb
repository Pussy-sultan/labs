# tui_lb7_2
require_relative 'lb7_2.rb'
print "Input Word:"
word = gets.chomp
a = Nuum.new(word)
a.wrtall
a.printnovowel
print a.novowel
