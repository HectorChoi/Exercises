# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the
# ASCII values of every character in the string. (You may use String#ord to
# determine the ASCII value of a character.)

# algorithm:
# initialize sum = 0
# split the string into characters
# map the characters to their ASCII values
# sum the values up
# return sum

def ascii_value(string)
  sum = 0
  string.chars.map(&:ord).each { |order| sum += order }
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
