=begin
----- Problem -----
input: string 
output: middle character/s of argument string

rules:
    Explicit:
    - if argument string is odd length, output is 1 character
    - if argument string is even length, output is 2 characters
    Implicit:
    - spaces count toward string length
    
----- Examples -----
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

----- Data Structure -----
strings

----- Algorithm -----
- find string length
  - if odd, return 1 char
  - if even, return 2 char

=end

def center_of(string)
  middle_idx = string.length / 2
  if string.length.odd?
    string[middle_idx]
  else
    string[middle_idx - 1, 2]
  end
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') # == ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x') #== 'x'