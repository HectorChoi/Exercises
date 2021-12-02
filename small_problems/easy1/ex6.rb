# first pass

# def reverse_words(string)
#   sentence = []
#   string.split.each do |word|
#     if word.length < 5
#       sentence << word
#     else
#       sentence << word.chars.reverse.join('')
#     end
#   end
#   sentence.join(' ')
# end
#
# puts reverse_words('Launch School')

def reverse_words(string)
  words = string.split
  words.each { |word| word.reverse! if word.length >= 5 }
  words.join(' ')
end

puts reverse_words('Walk around the block')
