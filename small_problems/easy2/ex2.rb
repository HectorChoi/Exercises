SQ_M_TO_FT = 10.7639

puts "Enter the length of the room in meters: "
length = gets.chomp.to_f

puts "Enter the width of the room in meters: "
width = gets.chomp.to_f

area_sq_m = (length * width).round(2)
area_sq_ft = (area_sq_m * SQ_M_TO_FT).round(2)

puts "The area of the room is #{area_sq_m} square meters " + \
     "(#{area_sq_ft} square feet)."
