# ----- Problem -----
# input: string
# output: boolean
# - true if string argument is a palindrome
# - false if string argument is not a palindrome

# rules:
#   Explicit:
#   - a palindrome reads the same forward and backwards --> mom
#   - case doesn't matters: Madam --> true vs. madam --> true
#   - only alphanumeric characters matter
#   - use `palindrome?` method
#   Implicit:
#   - numbers as strings count

# ----- Examples -----
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# ----- Data Structure -----
# strings 

# ----- Algorithm -----
# make all characters in input string lowercase
# remove non-alphanumeric characters from string
# pass in string to palindrome? method 

# ----- Code -----
def palindrome?(input)
  input == input.reverse
end

def real_palindrome?(string)
  string = string.downcase.gsub(/\W/, "")
  palindrome?(string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true
p real_palindrome?("Madam, I'm Adam") == true 
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
