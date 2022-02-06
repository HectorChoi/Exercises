file = File.read('sample.txt')
sentences = file.split(/\.|\?\!/)

largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "This sentence contains #{number_of_words} words"
