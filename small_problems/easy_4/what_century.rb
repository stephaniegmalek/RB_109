# ----- Problem -----
# input: year as integer
# output: century as string
#         - begins with the century number and ends with appropriate st, nd, rd or th 

# rules:
#     Explicit:
#     - new centuries begin in years that end with 01 ex: 1901 - 2000 --> 20th 
#     Implicit:
#     - end in 1 --> use 'st'
#     - end in 2 --> use 'nd'
#     - end in 3 --> use 'rd'
#     - end in anything else --> use 'th'

# ----- Examples -----
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# ----- Data Structure -----
# integers, strings, case statement

# ----- Algorithm -----
# 1. Get century number
#    - Divide input number by 100 
#    - Add 1 to result unless last digit of input number 00
# 2. Get century number suffix
#    - if remainder of dividing century number by 10 is 11, 12 or 13 suffix is th
#    - find last digit 
#       - remainder of dividing century number by 100
#    - if last digit is 1 then suffix is 'st'
#    - if last digit is 2 then suffix is 'nd'
#    - if last digit is 3 then suffix is 'rd'
#    - if last digit is anything else then suffix is 'th'
# 3. Add century number to suffix 

# ----- Code -----
def get_century_number(year)
  century = year / 100
  if year % 100 == 0
    century
  else
    century + 1
  end
end

def get_century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10
  
  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

def century(year)
  century = get_century_number(year)
  suffix = get_century_suffix(century)
  century.to_s + suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'