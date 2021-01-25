# ----- Problem -----
# input: string
# output: boolean
# - true if string argument is a palindrome
# - false if string argument is not a palindrome

# rules:
#   Explicit:
#   - a palindrome reads the same forward and backwards --> mom
#   - case matters: Madam --> false vs. madam --> true
#   - all characters matter 
#   Implicit:
#   - numbers as strings count

# ----- Examples -----
# palindrome?('madam') == true
# palindrome?('Madam') == false          
# palindrome?("madam i'm adam") == false 
# palindrome?('356653') == true

# ----- Data Structure -----
# strings

# ----- Algorithm -----
# compare input string to input string backwards 
# - if same return true
# - else return false

# ----- Code -----
def palindrome?(input)
  input == input.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          
p palindrome?("madam i'm adam") == false 
p palindrome?('356653') == true
p palindrome?([1, 1, 1, 1]) == true
p palindrome?([1, 2, 3, 4]) == false