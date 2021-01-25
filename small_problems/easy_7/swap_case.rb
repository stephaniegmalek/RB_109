# ----- Problem -----
# input: string
# output: new string
#         - every uppercase letter is replaced by its lowercase version
#         - every lowercase letter is replaced by its uppercase version
#         - all other characters remain unchanged

# rules:
#       Explicit:
#       - cannot use `String#swapcase` built in method

# ----- Examples -----
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# ----- Data Structure -----
# array of characters, strings

# ----- Algorithm -----
# mental model:
# - if character is uppercase, make lowercase and vice versa

# create uppercase alpha constant 
# create lowercase alpha constant
# split string into array of characters
# iterate thru array of characters 
# - if char is included in uppercase alpha constant
#   - make char lowercase
# if char is included in lowercase alpha constant
#   - make char uppercase
# else leave as is

# ----- Code -----
UPPERCASE_ALPHA = ('A' .. 'Z').to_a
LOWERCASE_ALPHA = ('a' .. 'z').to_a

def swapcase(string)
  swapped = string.chars.map do |char|
    if UPPERCASE_ALPHA.include?(char)
      char.downcase
    elsif LOWERCASE_ALPHA.include?(char)
      char.upcase
    else
      char
    end
  end
  swapped.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')

# Using Regex
def swap_case_regex(string)
  swapped = string.chars.map do |char|
    if char =~ /[A-Z]/
      char.downcase
    elsif char =~ /[a-z]/
      char.upcase
    else
      char
    end
  end
  swapped.join
end

p swap_case_regex('Launch School')
p swap_case_regex('sWITCH-A-Roo')