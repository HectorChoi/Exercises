=begin
input: starting value, ending value, and step value
output:
  iteratively yield or call successive iteration values
  return ?

rules:
  - The step value is applied to each iteration after the first
  - Your method should take a block to which it will yield (or call) successive iteration values

example:
step(1, 10, 3) { |value| puts "value = #{value}" }
  outputs
  value = 1
  value = 4
  value = 7
  value = 10
what should it return?

mm:
  create an array containing the starting value, incrementing by step value, up to the ending value
  iterate over the array, yielding to the block with each element of the array passed as an argument 
  return the array
=end

def step(start_value, ending_value, step_value)
  # arr = [start_value]
  # num = start_value + step_value
  # loop do
  #   arr << num
  #   break if num >= ending_value
  #   num += step_value
  # end
  # arr.each do |ele|
  #   yield (ele)
  # end
  # arr
  # issues with the above: using an array when it is not specified, allowing the step value increment
  # to go over the ending value

  current_value = start_value
  loop do
    yield(current_value)
    break if current_value + step_value > ending_value
    current_value += step_value
  end
  current_value
end

step(1, 10, 3) { |value| puts "value = #{value}" }
