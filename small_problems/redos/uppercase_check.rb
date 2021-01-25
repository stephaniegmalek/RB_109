=begin
----- Problem -----
input: string
output: boolean
        - true if all alpha chars are uppercase
        - false otherwise
rules:
- characters that are not alphabetic should be ignored

----- Examples -----
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

----- Data Structure -----
strings, array

----- Algorithm -----
compare string to uppercase string
=end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true