# ----- Problem -----
# input: a string
#       - multiple words, various characters both upper/lower and non alpha
# output: new string
#       - original value using staggered capitalization scheme in which every other
#         character is capitalized, the remaining characters are lowercase

# rules:
#       Explicit:
#       - characters that are not letters should not be changed
#       - characters that are not letter count as characters when switching between
#         upper and lowercase
#       Implicit:
#       - Start with uppercase

# ----- Examples -----
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# staggered_case('Hey Now You're an All STAR') == 'HeY NoW YoU'Re aN AlL StAr')

# ----- Data Structure -----
# strings, array of characters 

# ----- Algorithm -----
# mental model:
# - Transform each letter in string. If letter has an even index make uppercase,
#   if letter has an odd index make lowercase. If non-alpha do nothing.

# iterate thru each character of string
# - is index even? 
#   yes, make uppercase
# - is index odd?
#   yes, make lowercase

# ----- Code -----
def staggered_case(string)
  staggered = ''
  string.chars.each_with_index do |char, idx|
    if idx.even?
      staggered << char.upcase
    elsif idx.odd?
      staggered << char.downcase
    end
  end
  staggered
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case("Hey Now You're an All STAR") == "HeY NoW YoU'Re aN AlL StAr"

# Further Exploration
def staggered_case_2(string, start_upper=true)
  staggered = ''
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

p staggered_case_2('ignore 77 the 444 numbers', false)