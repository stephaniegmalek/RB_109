=begin 
----- Problem -----
input: string
output: new string where every consonant character is doubled

rules:
- vowels, digits, punctuation and whitespace should not be doubled

----- Examples -----
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

----- Data Structure -----
constant, array, string

----- Algorithm -----
initialize result variable
iterate through each character
- if char is consonant, add twice to result
- otherwise add to result once
=end
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.chars.each do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end 

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""