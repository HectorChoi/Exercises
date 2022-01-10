# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.
#
# Words consist of any string of characters that do not include a space.

# algorithm1:
# initialize empty hash to be returned
# split the string into words
# map to an array of sizes
# optional: sort the array of sizes?
# for size in sizes
#   if size is already a key, increment the corresp. value by 1
#   otherwise, initialize the key value pair to 1 count
# return the hash

def word_sizes(string)
  count_hash = {}
  sizes = string.split.map(&:size)
  for size in sizes
    if count_hash.key?(size)
      count_hash[size] += 1
    else
      count_hash[size] = 1
    end
  end
  count_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
