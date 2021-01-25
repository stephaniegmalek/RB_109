=begin
----- Problem -----
input: string
output: string -> middle character/s of argument
        - if argument is odd length, output is 1 character
        - if argument is even length, output is 2 characters
rules:
- input will be non-empty string
- spaces count as characters

----- Examples -----
center_of('I love ruby') == 'e'
# -> string length = 11
# -> middle char 'e' at index 5

center_of('Launch School') == ' '
# -> string length = 13
# -> middle char ' ' at index 6

center_of('Launch') == 'un'
# -> string length = 6
# -> middle chars 'un' at indexes 2 and 3

center_of('Launchschool') == 'hs'
center_of('x') == 'x'

----- Data Structure -----
strings

----- Algorithm -----
find string length
find middle by dividing string length by 2
if string length is odd
- return character at middle index 
if string length is even
- return 2 characters starting at middle index - 1 
=end

def center_of(string)
  middle = string.length / 2
  if string.length.odd?
    return string[middle]
  else
    return string[middle - 1, 2]
  end
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x') #== 'x'