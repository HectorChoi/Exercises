factorial = Enumerator.new do |n|
  a = b = 1
  loop do
    n << a
    a, b = b, (a + 1) * b 
  end
end

p factorial.take(7)
