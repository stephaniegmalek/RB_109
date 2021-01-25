# ----- Problem -----
# input: positive integer and boolean
# output: bonus amount
# rules:
#       Explicit:
#       - bonus amount is half salary if boolean true
#       - bonus amount is 0 if boolean false

# ----- Examples -----
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# ----- Data Structure -----
# integers, booleans

# ----- Algorithm -----
# If bonus? is true
#   return salary / 2
# If bonus? is false
#   return 0

# ----- Code -----
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000