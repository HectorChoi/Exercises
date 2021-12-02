# first pass
# def sum(number)
#   sum = 0
#   number.to_s.chars.each { |digit| sum += digit.to_i }
#   sum
# end

def sum(number)
  number.to_s.chars.map(&:to_i).inject(:+)
end

puts sum(496)
