=begin
----- Problem -----
input: string
output: new string but with staggered capitalization scheme

rules:
- characters that are not letter should not be changed but count when switching between
  upper and lowercase
- first char upper

----- Examples -----
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

----- Data Structure -----
string, array

----- Algorithm -----
initialize result variable
iterate thru string via index
- if index even, make upcase
- if index odd, make down case
=end

def staggered_case(string)
  result = ''
  index = 0
  while index < string.size
    if index.even? 
      result << string[index].upcase
    else
      result << string[index].downcase
    end
    index += 1
  end
  result
end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case_further(string, need_upper=true)
  result = ''
  # need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case_further('I Love Launch School!', false)
p staggered_case_further('ALL_CAPS')
p staggered_case_further('ignore 77 the 444 numbers') 