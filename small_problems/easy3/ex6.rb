def xor?(val1, val2)
  if val1 && !val2
    true
  elsif val2 && !val1
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
