# ----- Problem -----
# input: a string
# output: a new string with value of original string with all consecutive duplicate
#         characters collapsed into a single character 

# rules:
#   Explicit:
#   - return a new string
#   - can't use `String#squeeze` or `String#squeeze!` methods
#   Implicit:
#   - only lower case characcters
#   - spaces too?

# ----- Examples -----
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
# crunch('ddaaaily   doubbbblllleee') == 'daily dubble'

# ----- Data Structure -----
# string 

# ----- Algorithm -----
# 1. Create an empty string called result
# 2. Iterate through each char of input string
#    - check if each char matches the last char of result string
#      - if it doesn't match, add to result string
# 3. Return result string 

# ----- Code -----
def crunch(string)
  result = ''
  string.each_char do |char|
    result << char unless char == result[-1]
  end
  result
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')

# Further Exploration
def regex_crunch(string)
  string.gsub(/(.)\1+/, '\1')
end

def long_crunch(string)
  result = ''
  index = 0
  while index <= string.length 
    result << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  result
end

p long_crunch('ddaaiillyy ddoouubbllee')
p long_crunch('ggggggggg')