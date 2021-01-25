# ----- Problem -----
# input: string of numeric characters
# output: numbers

# rules:
#   Explicit:
#   - cannot use `String#to_i` or `Integer()`
#   - do not worry about leading `+` or `-`
#   - assume all characters will be numeric 

# ----- Examples -----
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# ----- Data Structure -----
# constant for conversion reference, string to array to integer

# ----- Algorithm -----
# 1. Create digits constant hash
# 2. Create empty numbers array 
# 3. iterate through input string char by char
#     - convert input string to array of characters
#     - compare current char to constants and add numeric equivelent to numbers array
# 4. Create total variable set to 0 
# 5. iterate through numbers array 
#     - for each num, set total variable equal to multipling total by 10 and add current num
# 6. return total

# ----- Code -----
DIGITS = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
}

def string_to_integer(num_string)
  digits_array = num_string.chars.map { |char| DIGITS[char] }
  
  total = 0
  digits_array.each { |digit| total = 10 * total + digit }
  total
end

string_to_integer('4321')
string_to_integer('570')

HEX_DIGITS = {
  '0' =>  0, '1' =>  1, '2' =>  2, '3' =>  3, '4' =>  4, 
  '5' =>  5, '6' =>  6, '7' =>  7, '8' =>  8, '9' =>  9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15
}

def hexadecimal_to_integer(string)
  digits = string.chars.map { |char| HEX_DIGITS[char.upcase] }
  
  total = 0
  digits.each { |digit| total = total * 16 + digit }
  total
end

p hexadecimal_to_integer('4D9f') #== 19871