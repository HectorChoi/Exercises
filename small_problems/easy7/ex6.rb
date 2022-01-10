# Staggered Caps (part 2)

def staggered_case(str, first_upper=true)
  result = ''
  need_cap = first_upper
  str.chars.each do |char|
    if need_cap
      result += char.upcase
    else
      result += char.downcase
    end
    need_cap = !need_cap if char.match(/[A-Za-z]/)
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
