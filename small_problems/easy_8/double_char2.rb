# ----- Problem -----
# input: string
# output: new string where every consonant char is doubled

# rules:
#       Explicit:
#       - Vowels (a, e, i, o, u), digits, punctuation and whitespace are not consonant

# ----- Examples -----
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""
# double_consonants("Launch School!") == "LLaunncchh SScchhooll!"

# ----- Data Structure -----
# strings, array of characters

# ----- Algorithm -----
# initialize variable to contain result
# iterate thru argument string
# - if char is consonant, add to result twice else just once

# ----- Code -----
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.chars do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") #== "JJullyy 4tthh"
p double_consonants('') #== ""
p double_consonants("Launch School!") #== "LLaunncchh SScchhooll!"