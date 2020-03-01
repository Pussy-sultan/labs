# lb7_2.rb
# class Word
class Woord

  attr_accessor :word

  def initialize (word)
    @word = word
  end

  def wrtword
    puts "Word: #{@word}"
  end

  def printvowel
    print "Amount of vowels: "
    puts @word.downcase.count 'aeiouy'
  end

  def vowel
    @word.downcase.count 'aeiouy'
  end

end


class Nuum < Woord

  attr_accessor :num

  def initialize (word)
    super(word)
    @num  = @word.size
  end

  def wrtall
    wrtword
    puts "Word lenght: #{@num}"
  end

  def printnovowel
    print "Amont of consonants:"
    puts @num - vowel
  end

  def novowel
    @num - vowel
  end

end
