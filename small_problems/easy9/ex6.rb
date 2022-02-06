# How long are you?

# algorithm:
# split the string into an array of substrings
# create an array of substring lengths
# initialize an empty results array
# for each substring
#   append a new string containing the substring, a space, and the substring length
#   to the result array
# return the result array

def word_lengths(string)
  substrings = string.split
  lengths = substrings.map do |substring|
    substring.length
  end
  results = []
  substrings.each_with_index do |substring, index|
    results << (substring + ' ' + lengths[index].to_s)
  end
  results
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
   ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
