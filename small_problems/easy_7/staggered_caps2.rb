# ----- Problem -----
# input: a string
#       - multiple words, various characters both upper/lower and non alpha
# output: new string
#       - original value using staggered capitalization scheme in which every other
#         character is capitalized, the remaining characters are lowercase

# rules:
#       Explicit:
#       - characters that are not letters should not be changed
#       - characters that are not letter DO NOT count as characters when switching between
#         upper and lowercase
#       Implicit:
#       - Start with uppercase

# ----- Examples -----
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# ----- Data Structure -----
# array of characters

# ----- Algorithm -----
# mental model:
# - Transform each letter in string. First letter make uppercase, next letter make
#   lowercase, repeat. If non-alpha do nothing and skip over.

# iterate thru each character of string
# - is first character letter? 
#   yes, make uppercase
#   no, skip
# - is next character letter?
#   yes, make lowercase
#   no, skip

# ----- Code -----
def staggered_case(string)
  staggered = ''
  toggle = true
  string.chars.each do |char|
    if char =~ /[A-Za-z]/
      if toggle
        staggered << char.upcase
      else
        staggered << char.downcase
      end
      toggle = !toggle
    else
      staggered << char
    end
  end
  staggered
end

# staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') #== 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'

# Further Exploration
def staggered_case_2(string)
  staggered = ''
  start_upper = true
  string.chars.each do |char|
    if start_upper
      staggered << char.upcase
    else
      staggered << char.downcase
    end
    start_upper = !start_upper
  end
  staggered
end

def staggered_case_3(string, non_alpha_count=false)
  if non_alpha_count
    staggered_case_2(string)
  else
    staggered_case(string)
  end
end

p staggered_case_3('ignore 77 the 444 numbers', true)