=begin
----- Problem -----
input: string
output: new string with every character of argument string doubled 

rules:
- if empty string, return empty string
- double all characters 

----- Examples -----
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

----- Data Structure -----
strings, array

----- Algorithm -----
initalize doubled variable - string
iterate thru each character 
- add each character to doubled twice
=end

def repeater(string)
  doubled = ''
  string.chars.each do |char|
    doubled << char << char
  end
  doubled
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''