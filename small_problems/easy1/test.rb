def sum(pos_int)
  pos_int.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(496)
