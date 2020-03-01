# lb7_1.rb

# class
class Text

  attr_accessor :str

  def initialize(f = 'F.txt',h = 'H.txt')
    @file_f = f
    @file_h = h
  end

  def make
    File.open(@file_f, 'r'){ |file|
      @str = file.read
    }
    File.open(@file_h, 'w'){ |file|
      for i in 0..@str.length
        if @str[i] == "a"
            file.write @str[i+1]
        end
      end
    }
  end

  def pF
    File.open(@file_f, 'r'){ |file|
      puts file.read
    }
  end

  def pH
    File.open(@file_h, 'r'){ |file|
      puts file.read
    }
  end

end
