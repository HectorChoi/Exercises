# first pass
# def stringy(positive_integer)
#   counter = positive_integer
#   stringy = ''
#   while counter > 0
#     if (positive_integer - counter).even?
#       stringy << '1'
#     else
#       stringy << '0'
#     end
#     counter -= 1
#   end
#   stringy
# end
#
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'

def stringy(pos_int)
  str = ""
  pos_int.times do |index|
    number_str = index.even? ? '1' : '0'
    str << number_str
  end
  str
end

puts stringy(6) == '101010'
