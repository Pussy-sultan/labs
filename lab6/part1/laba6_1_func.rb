#  frozen_string_literal: true

def f(x)
  x**(3.0 / 2)
end

def length(e)
  counter = 0
  n = 4
  ln = 0
  loop do
    l = 0
    x = 0
    h = 4.0 / n
    (1..n).each do
      y_n = f(x)
      x_n = x
      x += h
      y = f(x)
      l += Math.sqrt((y - y_n)**2 + (x - x_n)**2)
    end
    n *= 2
    counter += 1
    ln = l
    break if (l - 9.07341528938).abs < e
  end
  puts "при e =#{e} длина = #{ln} кол-во итераций = #{counter}"
  return ln
end
