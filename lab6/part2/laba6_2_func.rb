#  frozen_string_literal: true

def f(x)
  x**(3.0 / 2)
end

def length(e)
  list = Enumerator.new do |yielder|
    len, n, counter = 0.0, 4, 1
    loop do
      x = 0.0
      l = 0
      h = 4.0 / n
      (0..n).each do
        y_prev = f(x)
        x_prev = x
        x += h
        y = f(x)
        l += Math.sqrt((y - y_prev)**2 + (x - x_prev)**2)
      end
      len = l
      n *= 2
      counter += 1
      yielder.yield len, n, counter
    end
  end
  f = list.find { |len| (len[0] - 9.07341528938).abs < e }
  puts "при e =#{e} длина = #{f[0]} кол-во итераций = #{f[2]}"
  return f[0]
end
