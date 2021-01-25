# ----- Problem -----
# input: integer
# output: boolean
#   - true if input integer reads the same forwards and backwards
#   - false if otherwise

# rules:
#   Explicit:
#   - a palindromic number reads the same forwards and backwards

# ----- Examples -----
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# ----- Data Structure -----
# integers, strings

# ----- Algorithm -----
# convert input integer to string and pass to palindrome? method

# ----- Code -----
def palindrome?(input)
  input == input.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

#  p palindromic_number?(34543) == true
#  p palindromic_number?(123210) == false
#  p palindromic_number?(22) == true
#  p palindromic_number?(5) == true

def number_to_array(number)
  num_array = []
  
  loop do
    number, remainder = number.divmod(10)
    num_array << remainder
    break if number == 0
  end
  num_array
end

p number_to_array(123210)
p number_to_array(34543)
p number_to_array(01210)