# ----- Problem -----
# input: a string
# output: ASCII String value

# rules:
#     Explicit:
#     - use `String#ord` to determine the ASCII value of each characcter
#     - the ASCII String value is the sum of the ASCII value of every character in the string
#     Implicit:
#     - input string may range from a space or letter to a word or multiple words

# ----- Examples -----
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# ----- Data Structure -----
# string, array of substring, numbers

# ----- Algorithm -----
# 1. Create sum variable and set to 0
# 2. Iterate through each character of string 
#    - get the ASCII value of each character 
#    - add to sum variable 
# 3. Return sum

# ----- Code -----
def ascii_value(string)
  sum = 0
  string.chars.each { |char| sum += char.ord }
  sum
end

p ascii_value('Four score') #== 984
p ascii_value('Launch School') #== 1251
p ascii_value('a') #==97
p ascii_value('') #== 0

# Further Exploration
char = 'a'
puts char.ord.chr == char
# only works on single chars