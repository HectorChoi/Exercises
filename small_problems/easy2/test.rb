# Print all odd numbers from 1 to 99 inclusive to the console,
# with each number on a separate line.

1.upto(99).each do |number|
  puts number if number.even?
end
