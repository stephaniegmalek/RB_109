=begin
----- Problem -----
input: string
output: integer
        - the ASCII string value

rules:
      Explicit:
      - the ASCII string value is the sum of the ASCII values of each character 
        in the string
      - use `String#ord` to determine the ASCII value of a character
      Implicit:
      - input string can include speaces, uppercase and lowercase
      - if empty string return 0

----- Examples -----
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

----- Data Structure -----
strings, integers, array

----- Algorithm -----
iterate thru each character of the string
- use `String#ord` to get ASCII values of each char

Find sum of all ASCII values

=end

def ascii_value(string)
  sum = 0
  string.chars do |char|
    sum += char.ord
  end
  sum
end

p ascii_value('Four score') #== 984
p ascii_value('Launch School') #== 1251
p ascii_value('a') #== 97
p ascii_value('') #== 0

def ascii_value_alt(string)
  string.chars.map { |char| char.ord }.reduce(:+)
end

# p ascii_value_alt('Four score')
# p ascii_value_alt('Launch School')
# p ascii_value_alt('a')