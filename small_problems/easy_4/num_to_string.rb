# ----- Problem -----
# input: positive integer or zero
# output: string of numberic characters

# rules:
#   Explicit: 
#   - no built-in conversion methods: `Integer#to_s`, `String()`, or `Kernel#format`

# ----- Examples -----
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# ----- Data Structure -----
# convert integer to array of digits, convert each digit to string, combine strings

# ----- Algorithm -----
# 1. Create empty digits array
# 2. loop through each digit of integer
#    - separate out each last place digit of integer and add to digits array
# 3. iterate through digits array converting each digit to char
# 4. reverse order of digits array and join chars together

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

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)