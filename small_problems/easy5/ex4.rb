# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word are swapped.
#
# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces

# algorithm:
# split the string into an array
# iterate over the array and swap the first and last letters of each string
# join the string back together

# subalgorithm:
# save index[0]
# save index[-1]
# index assign [0] -> index[-1] value, and vice versa
# return mutated string

def swap(string)
  swapped = string.split
  swapped.each { |str| swap_chars(str) }
  swapped.join(' ')
end

def swap_chars(string)
  first = string[0]
  last = string[-1]
  string[0] = last
  string[-1] = first
  string
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
