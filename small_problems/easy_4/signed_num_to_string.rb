# ----- Problem -----
# input: integer or zero
# output: string of numberic characters

# rules:
#   Explicit: 
#   - no built-in conversion methods: `Integer#to_s`, `String()`, or `Kernel#format`

# ----- Examples -----
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# ----- Data Structure -----
# convert integer to array of digits, convert each digit to string, combine strings

# ----- Algorithm -----
# Check if number is negative
# - If negative
#   - remove negative
#   - pass into `integer_to_string` method
#   - add '-' to result
# - If positive
#   - pass number to `integer_to_string` method
#   - add '+' to result
# - If 0
#   - return '0'

# ----- Code -----
DIGITS = [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  digits = ''
  loop do
    number, digit = number.divmod(10)
    digits.prepend(DIGITS[digit])
    break if number == 0
  end
  digits
end

def signed_integer_to_string(number)
  prefix = case number <=> 0
           when -1 then '-'
           when  1 then '+'
           else         ''
           end
  prefix + integer_to_string(number.abs)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
