# ----- Problem -----
# input: string of numeric characters
# output: numbers

# rules:
#   Explicit:
#   - cannot use `String#to_i` or `Integer()`
#   - there may be a leading `+` or `-`
#     - if a leading `+` then return a positive number
#     - if a leading `-` then return a negative number
#     - if no sign then return a positive number
#   - assume all characters will be numeric and valid

# ----- Examples -----
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# ----- Data Structure -----
# convert string to array of substrings to array of integers to integer

# ----- Algorithm -----
# 1. Check if first character is a `+` or `-`
#    - if yes, check if `+`
#      - if yes
#        - remove `+`
#        - pass into `string_to_integer` method
#      - if no
#        - remove `-`
#        - pass into `string_to_integer` method

# --- String to integer method
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

def string_to_signed_integer(num_string)
  if num_string[0] == '+' || num_string[0] == '-'
    number = string_to_integer(num_string[1..-1])
    num_string[0] == '-' ? -number : number
  else
    string_to_integer(num_string)
  end
end

p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100