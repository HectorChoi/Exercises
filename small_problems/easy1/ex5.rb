def reverse_sentence(string)
  reversed_words = string.split(" ").reverse
  reversed = ""
  reversed_words.each_with_index do |word, idx|
    reversed << word
    reversed << " " if idx < reversed_words.size - 1
  end
  reversed
end

puts reverse_sentence("Hello World") == "World Hello"
puts reverse_sentence("Reverse these words") == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('     ') == ''

# idiomatic ruby solution:
# string.split.reverse.join(' ')
