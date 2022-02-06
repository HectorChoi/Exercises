# 1000 Lights

=begin
Input: Integer (total number of switches `n`)
output: Array (which lights are on after `n` repetitions)

Rules:
- all lights are initially off
- on first pass, toggle all switches (all on)
- on second pass, toggle switches 2, 4, 6, ...
- on third pass, toggle switches 3, 6, 9, ...
- ...
- on nth pass, toggle switch n

mm:
Create an array of switches to contain boolean elements, true if on, false if off
iterate over integers from 1 up to n, flipping switches on and off
loop over array of switches with index, passing indicies that are on to a result array

algorithm:
initialize result array = []
initialize array of switches with n `false`s
from 1 up to n |divisor|
  loop over array of switches with index; if index % divisor == 0, switch the boolean
loop over array of switches with index
  if ele is true, append index to result array
return result array
=end

def lights_on(n)
  result = []
  switches_on = []
  n.times { switches_on << false }
  1.upto(n) do |divisor|
    switches_on.map!.with_index do |switch_on, index|
      if switch_on && ((index + 1) % divisor == 0)
        false
      elsif !switch_on && ((index + 1) % divisor == 0)
        true
      else
        switch_on
      end
    end
  end

  switches_on.each_with_index do |switch_on, index|
    result << (index + 1) if switch_on
  end
  result
end

p lights_on(1000)
