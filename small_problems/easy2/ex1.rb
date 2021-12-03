# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

# Example Output
# Teddy is 69 years old!

puts "=> Give me a name and I'll randomly guess their age."
name = gets.chomp
name = "Teddy" if name.empty?
random_age = rand(20..200)
puts "#{name} is #{random_age} years old!"
