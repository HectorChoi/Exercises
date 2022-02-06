# Madlibs

# algorithm 1:
# initialize an empty hash
# get input noun, verb, adj, adv
# enter as hash values for respective keys
# use hash to populate into story string

puts "Enter a noun: "
noun = gets.chomp
puts "Enter a verb: "
verb = gets.chomp
puts "Enter a adjective: "
adjective = gets.chomp
puts "Enter a adverb: "
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
