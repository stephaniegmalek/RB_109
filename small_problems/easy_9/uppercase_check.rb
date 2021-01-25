=begin
----- Problem -----
input: string
output: boolean
        - true if all alpha chars in argument are uppercase
        - false if not
rules:
  Explicit:
  - chars that aren't alpha should be ignored
  Implicit:
  - if string is empty return true
  
----- Example -----
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

----- Data Structure -----
array of chars, boolean, string

----- Algorithm -----
- iterate thru each character of argument string
- if char is uppercase, move to next
- if not, return false

=end
UPPER_ALPHA = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def uppercase?(string)
  string.gsub(/[^a-z]/i, '').chars do |char|
    return false if !UPPER_ALPHA.include?(char)
  end
  true
end

p uppercase?('t') #== false
p uppercase?('T') #== true
p uppercase?('Four Score') #== false
p uppercase?('FOUR SCORE') #== true
p uppercase?('4SCORE!') #== true
p uppercase?('') #== true