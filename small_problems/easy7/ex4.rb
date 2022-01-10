def swapcase(str)
  characters = str.chars
  characters.each do |char|
    if char.match(/[a-z]/)
      char.upcase!
    elsif char.match(/[A-Z]/)
      char.downcase!
    end
  end
  characters.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
