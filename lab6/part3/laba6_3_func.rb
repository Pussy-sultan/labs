#  frozen_string_literal: true

# class
class Integral
  def initialize(a, b)
    @a = a
    @b = b
  end

  def intg(lam = nil)
    s, n, x = 0, 100, @a
    h = (@b - @a) / n
    if block_given?
      puts 'передан блок:'
    elsif lam
      puts 'передано lambda-значение:'
    end
    (1..n).each do
      if block_given?
        s += ((@b - @a) / n) * yield(x)
      elsif lam
        s += ((@b - @a) / n) * lam.call(x)
      end
      x += h
    end
    puts s
    return s
  end
end
