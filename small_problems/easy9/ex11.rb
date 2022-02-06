=begin
input: array of words
output: print out groups of words that are anagrams

rules:
- anagrams have same exact letters but in different order
- output should be array of anagrams output on separate lines

mm:
use a result hash to contain arrays of anagrams
use the sort method to create an anagram key
loop over input words, adding to hash

algo:
initialize a result hash
loop over words
  for each word, split into characters and sort and join to make anagram key
  if hash has anagram key as a key, add the word to the value array
  else initialize a new value array with the word in it
loop over result hash
  p out anagram arrays

=end

def print_anagrams(words)
  result = {}

  words.each do |word|
    anagram_key = word.chars.sort.join('')
    if result.key?(anagram_key)
      result[anagram_key].push(word)
    else
      result[anagram_key] = [word]
    end
  end

  result.each_value do |anagrams|
    p anagrams
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

print_anagrams(words)

=begin
Output:
["demo", "dome", "mode"]
["neon", "none"]
#(etc)
=end
