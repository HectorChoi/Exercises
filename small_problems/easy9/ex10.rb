=begin

input: nested array of fruits with quantities
output: array of fruits, repeated by quantities

rules:
- return a one-dimensional array with the string repeated by quantity times

algo:
initialize result array
loop over input array
  per subarray, append the fruit quantity number of times to result array
return result array

=end

def buy_fruit(list)
  result = []
  list.each do |subarray|
    subarray[1].times { result << subarray[0] }
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
