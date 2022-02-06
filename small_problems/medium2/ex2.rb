# Now I know my ABCs
=begin
input: String
output: Boolean

rules:
- a collection of spelling blocks has two letters per block, e.g. B:O, X:K, ...
- return true if the word passed in as an argument can be spelled from the
set of blocks, false o/w

mm:
have a collection housing the blocks in an accessible manner so that we can
check simultaneously whether a word has multiple instances of the letters on
the block

data structure:
an array

algorithm:
initialize array of strings, `BLOCKS`, containing both characters of each block
for all blocks
loop over `BLOCKS`, return false if the count for any given block is >= 2 in
the word
return true otherwise
=end
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  word = word.upcase

  BLOCKS.each do |block|
    return false if word.count(block) >= 2
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
