# algorithm:
# split the string into 'words' as delimited by spaces
# map the words into cleaned words by deleting non-letters
# map cleaned words into sizes
# create a new hash with default 0
# increment with each size count

def word_sizes(string)
  words = string.split
  cleaned_words = words.map {|word| word.delete('^A-Za-z')}
  word_sizes = cleaned_words.map(&:size)
  size_hash = Hash.new(0)
  word_sizes.each do |size|
    size_hash[size] += 1
  end

  size_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1,  3 => 1, 2 => 1 }
p word_sizes('') == {}
