=begin
----- Problem -----
input: string
output: new string where every uppercase letter is replaced by lowercase version and
        vice versa
rules:
- cannot use `String#swapcase`

----- Examples -----
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

----- Data Structure -----
strings,array

----- Algorithm -----
initialize result variable
iterate through chars 
- if char is uppercase, make lowercase
- if char is lowercase, make uppercase

=end

def swapcase(string)
  swapped = string.chars.map do |char|
    if char == char.upcase
      char.downcase
    elsif char == char.downcase
      char.upcase
    else
      char
    end
  end
  swapped.join
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'