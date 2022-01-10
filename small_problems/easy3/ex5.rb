def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# puts square(5)

def power(num, power)
  current_num = 1
  power.times do
    current_num = multiply(current_num, num)
  end
  current_num
end

puts power(5, 2)
