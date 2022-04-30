# def decipher(name)
#   deciphered = name.split.map { |n| decipher_word(n) }
#   deciphered.join(' ')
# end

# def decipher_word(name)
#   name_chars = name.downcase.chars
#   alphabet = ('a'..'z').to_a
#   deciphered_chars = name_chars.map do |char|
#     alph_index = alphabet.index(char)
#     unless alph_index == nil
#       deciphered_index = (alph_index + 13) % 26
#       alphabet[deciphered_index]
#     else
#       char
#     end
#   end
#   deciphered_chars.join('')
# end

# p decipher('nqn ybirynpr')
# p decipher('tenpr ubccre')
# p decipher('nqryr tbyqfgvar')
# p decipher('nyna ghevat')
# p decipher('puneyrf onoontr')
# p decipher('noqhyynu zhunzznq ova Zhfn ny-Xujnevmzv')
# p decipher('wbua ngnanfbss')
# p decipher('ybvf unvog')
# p decipher('pynhqr funaaba')
# p decipher('fgrir wbof')
# p decipher('ovyy tngrf')
# p decipher('gvz orearef-Yrr')
# p decipher('fgrir jbmavnx')
# p decipher('xbaenq mhfr')
# p decipher('fve nagbal ubner')
# p decipher('zneiva zvafxl')
# p decipher('lhxvuveb zngfhzbgb')
# p decipher('unllvz fybavzfxv')
# p decipher('tregehqr oynapu')

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def rot13(encrypted_text)
  encrypted_text.each_char.reduce('') do |result, encrypted_char|
    result + decipher_character(encrypted_char)
  end
end

def decipher_character(encrypted_char)
  case encrypted_char
  when 'a'..'m', 'A'..'M' then (encrypted_char.ord + 13).chr
  when 'n'..'z', 'N'..'Z' then (encrypted_char.ord - 13).chr
  else                         encrypted_char
  end
end

ENCRYPTED_PIONEERS.each do |encrypted_name|
  puts rot13(encrypted_name)
end

=begin
It's tempting to use a lookup table with a hash to solve this problem, but it's
actually easier to use the description of Rot13 directly ("rotate" each
character by 13), so that's what we will do.

Our program begins by setting up a constant Array that contains our encrypted
list of pioneers.

We will use a method, `rot13`, to decrypt each name in the list, one at a time,
and within that method, we use `decipher_character` to decrypt each character.
We use `String#each_char` and `Enumerable#reduce` to iterate through the
characters in `encrypted_text`, and construct the decrypted return value.

`decipher_character` uses a `case` statement that breaks the character
decryption problem into 3 parts: the letters between A and M, the letters
between N and Z, and everything else. Note that we check for both uppercase
and lowercase letters because that's what we have to deal with. The first group
is easy: we can shift the chharacter 13 places forward ('A' becomes 'N', 'B'
becomes 'O', ..., 'M' becomes 'Z'). We do this with `String#ord` and
`Integer#chr` which convert a character to a numeric value and vice versa.
Similarly, we do the same for the 2nd group, but this time we need to shift
letters to the left by 13 places ('N' becomes 'A', 'O' becomes 'B', etc.)
Lastly, we can handle everything else by returning the value unchanged.

Once we have all the components in place, all we have to do is iterate through
our list of encrypted names, and print each decrypted name.

Further Exploration

If there is anybody on this list whose name you don't recognize - and there
probably are some - you owe it to yourself to look them up. Everybody should
be aware of the pioneers in their chosen field, and computing is no different.

Most computers today use a character encoding called ASCII to store the basic
set of characters such as latin letters, Arabic digits, and some punctuation.
This encoding is convenient in that the lowercase letters all have consecutive
values between 97 and 122, while the uppercase letters have consecutive values
between 65 and 90. This makes implementation of Rot13 easy.

Not all computers use ASCII. Some mainframes use different schemes such as
EBCDIC, which some IBM computers use. EBCDIC is unusual: the alphabetic
characters are not all grouped together like in ASCII. How would this impact
our implementation of this program if we were running this program on data
that uses the EBCDIC representation?
=end
