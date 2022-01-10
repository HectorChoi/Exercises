def prompt(num)
  puts "==> Enter the #{num} number: "
  gets.chomp.to_i
end

first_five = []
first_five[0] = prompt("1st")
first_five[1] = prompt("2nd")
first_five[2] = prompt("3rd")
first_five[3] = prompt("4th")
first_five[4] = prompt("5th")

last_number = prompt("last")

if first_five.include?(last_number)
  puts "The number #{last_number} appears in #{first_five}."
else
  puts "The number #{last_number} does not appear in #{first_five}."
end
