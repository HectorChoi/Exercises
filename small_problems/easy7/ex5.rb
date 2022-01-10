# Staggered Caps (pt 1.)

# algorithm:
# split the str into characters
# have even index characters capitalized, odd number index characters downcased
# join and return the staggered string

# def staggered_case(str)
#   characters = str.chars
#   characters.each_with_index do |char, index|
#     char.upcase! if index.even?
#     char.downcase! if index.odd?
#   end
#   characters.join('')
# end

# algorithm2: (non-mutating methods)
# initialize an empty result string
# have a variable that tracks whether we need to capitalize the next char
# iterate over string.chars,
#   adding the upcased or downcased version of char depending on tracker
#   switch tracker variable to opposite boolean
# return result string

def staggered_case(str, first_upper=true)
  result = ''
  need_cap = first_upper
  str.chars.each do |char|
    if need_cap
      result += char.upcase
    else
      result += char.downcase
    end
    need_cap = !need_cap
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
