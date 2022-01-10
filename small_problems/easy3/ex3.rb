# Write a program that will ask a user for an input of a word or multiple
# words and give back the number of characters. Spaces should not be counted
# as a character.

puts "Please write word or multiple words: "
input_string = gets.chomp

character_count = 0
input_string.split.each { |word| character_count += word.length }

puts "There are #{character_count} characters in \"#{input_string}\"."
