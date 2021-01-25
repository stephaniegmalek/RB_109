# ----- Problem -----
# input: positive integer
# output: sum of integers digits
# rules:
#       Explicit:
#       - no basic looping constructs
# mental model:
#       - Separate out each digit of number and then add together

# ----- Examples -----
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# ----- Data Structure -----
# strings, array of substrings to array of integers

# ----- Algorithm -----
# SET sum variable equal to 0

# convert number to string and split string into array of substrings
# Iterate through each substring
#   convert each substring back to an integer
#   add integer to sum variable 

# RETURN sum

# ----- Code -----
def sum(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45