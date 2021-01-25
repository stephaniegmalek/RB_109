# ----- Problem -----
# input: positive integer
# output: array of input integer digits
# rules:
#       Implicit Requirments
#       - order of array elements same as input number
# mental model:
# extract each digit from number and add to collection 

# ----- Examples -----
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4] 

# ----- Data Structure -----
# integers, arrays

# ----- Algorithm -----
# START
# Given positive number

# SET digits = empty array

# WHILE number is greater than zero
#   reassign number and assign remainder to result of dividing the given number by 10
#   add the remainder to the digits collection

# PRINT collection

# ----- Code -----
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

p digit_list(12345) # == [1, 2, 3, 4, 5]
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]