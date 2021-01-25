# ----- Problem -----
# input: positive integer
# output: string of alternating 1s and 0s
# rules:
#       Explicit:
#       - output string always begins with 1s
#       - length of output string is equal to positive integer
# mental model:
# Add char '1' to string, then add '0', repeat until string has same number of
# characters as given integer

# ----- Examples -----
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# puts stringy(3) == '101'
# puts stringy(5) == '10101'

# ----- Data Structires -----
# strings

# ----- Algorithm -----
# SET string variable equal to empty string
# For as many times as number is
#   if n variable is even
#     add a '1' to string 
#   if n variable is odd
#     add a '0' to string
# RETURN string 

# ----- Code -----
def stringy(num, start_value='1')
  string = ''
  other_value = start_value == '1' ? '0' : '1'
  
  num.times do |i|
    number = i.even? ? start_value : other_value
    string << number
  end
  string
end

puts stringy(6)
puts stringy(9, '0') # == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# puts stringy(3) == '101'
# puts stringy(5) == '10101'