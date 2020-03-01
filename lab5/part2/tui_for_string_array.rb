# Ruby
require_relative 'string_array.rb'
print 'Введите строки : '
a = Text.new
a.str = gets.chomp
puts "Исходные строки \n#{a.str}\nКонец вывода исходных строк"
a.correct
puts "Измененные строки \n#{a.list.join(" ")}\nКонец вывода измененных строк"
