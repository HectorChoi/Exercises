# Leading Substrings

# algorithm:
# initialize an empty array of substrings
# loop over length to be sliced from 1 to size
#   slice the string at index 0 to length
#   add the sliced substring to array of substrings
# return the array of substrings

# def leading_substrings(str)
#   substrings = []
#   1.upto(str.size) do |length|
#     substrings << str.slice(0, length)
#   end
#   substrings
# end

# algorithm2: using solution [0..index] substring
# same algorithm, just different looping iterator

def leading_substrings(str)
  substrings = []
  0.upto(str.size - 1) do |index|
    substrings << str[0..index]
  end
  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
