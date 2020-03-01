# Ruby
# list of strings class
class Text
  
    attr_accessor :str , :list

    def correct
      @list = @str.split
      for i in 0 .. @list.length-1
        if i%2 == 0 && @list[i][0] == 'n'
          print "Введите новую строку : "
          @list[i] = gets.chomp
        end
        if i%2 != 0 && @list[i][0] == 'l'
          @list[i]=''
        end
      end
    end

end
