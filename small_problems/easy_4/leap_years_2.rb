# ----- Problem -----
# input: year as integer 
# output: boolean
#         - if input year is a leap year it returns true
#         - if not a leap year it returns false

# rules:
#       Explicit:
#       - If year before 1752
#         - if year evenly divisible by 4 it IS a leap year
#       - If year is 1752 or later
#         - if year evenly divisible by 400 it IS a leap year
#         - if year evenly divisible by 100 it is NOT a leap year
#         - if year evenly divisible by 4 it IS a leap year
#       Implicit:
#       - input year is greater than 0

# ----- Examples -----
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

# ----- Data Structure -----
# integers, booleans, if/elsif/else statements

# ----- Algorithm -----
# 1. Check if year input is less than 1752
#    - if yes
#      - check if evenly divisible by 4
#        - if yes, return true
#        - if no, return false
# 
# 2. Check if year input is evenly divisible by 400
#    - if yes, return true
# 3. Check if year input is evenly divisible by 100
#    - if yes, return false
# 4. Check if year input is evenly divisible by 4
#    - if yes, return true

# ----- Code -----
def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true