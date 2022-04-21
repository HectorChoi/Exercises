def decipher(name)
  deciphered = name.split.map { |n| decipher_word(n) }
  deciphered.join(' ')
end

def decipher_word(name)
  name_chars = name.downcase.chars
  alphabet = ('a'..'z').to_a
  deciphered_chars = name_chars.map do |char|
    alph_index = alphabet.index(char)
    unless alph_index == nil
      deciphered_index = (alph_index + 13) % 26
      alphabet[deciphered_index]
    else
      char
    end
  end
  deciphered_chars.join('')
end

p decipher('nqn ybirynpr')
p decipher('tenpr ubccre')
p decipher('nqryr tbyqfgvar')
p decipher('nyna ghevat')
p decipher('puneyrf onoontr')
p decipher('noqhyynu zhunzznq ova Zhfn ny-Xujnevmzv')
p decipher('wbua ngnanfbss')
p decipher('ybvf unvog')
p decipher('pynhqr funaaba')
p decipher('fgrir wbof')
p decipher('ovyy tngrf')
p decipher('gvz orearef-Yrr')
p decipher('fgrir jbmavnx')
p decipher('xbaenq mhfr')
p decipher('fve nagbal ubner')
p decipher('zneiva zvafxl')
p decipher('lhxvuveb zngfhzbgb')
p decipher('unllvz fybavzfxv')
p decipher('tregehqr oynapu')
