=begin
----- Problem -----
input: a string that consists of some words (all lowercased) and an assortment of 
       non-alphabetic characters
output: same string but with all non-alphabetic characters replaced by spaces

rules:
- if one or more non-alphabetic characters occur in a row, only have one space 
  in the result, aka no consecutive spaces

----- Example -----
cleanup("---what's my +*& line?") == ' what s my line '

----- Data Structure -----
string, array

----- Algorithm -----
replace all non-alphabetic chars with spaces
iterate thru each char 
- if char is space only keep if last char isn't a space

re join characters
=end

def cleanup(string)
  clean = ''
  result = string.gsub(/[^a-z]/, ' ').chars
  result.each do |char|
    if char == ' '
      clean << char unless clean[-1] == ' '
    else
      clean << char
    end
  end
  clean
end

p cleanup("---what's my +*& line?") #== ' what s my line '