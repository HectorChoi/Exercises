puts "What is your age? "
current_age = gets.chomp.to_i
puts "At what age would you like to retire? "
retire_age = gets.chomp.to_i

years_left = retire_age - current_age
current_year = Time.now.year
retire_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_left} years of work to go!"
