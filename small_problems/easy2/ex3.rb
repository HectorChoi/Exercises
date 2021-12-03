puts "What is the bill? "
bill_amount = gets.chomp.to_f
puts "What is the tip percentage? (e.g. 15 for 15%) "
tip_percentage = gets.chomp.to_f

tip = tip_percentage * 0.01 * bill_amount
total = bill_amount + tip

puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total)}"
