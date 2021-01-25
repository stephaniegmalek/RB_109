=begin
----- Problem -----
input: string
output: new string with consecutive duplicate characters collapsed into a single char

rules: 
- cannot use `String#squeeze` or `String#squeeze!`

----- Examples -----
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

----- Data Structure -----
strings 

----- Algorithm -----
initialize result variable 
iterate thru each char of input
- add to result unless previous character is same as current char

=end

def crunch(string)
  result = ''
  string.chars do |char|
    result << char unless char == result[-1]
  end
  result
end

# p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
# p crunch('4444abcabccba') #== '4abcabcba'
# p crunch('ggggggggggggggg') #== 'g'
# p crunch('a') #== 'a'
# p crunch('') #== ''

def crunch_alt(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

# p crunch_alt('ddaaiillyy ddoouubbllee') #== 'daily double'
# p crunch_alt('4444abcabccba') #== '4abcabcba'
# p crunch_alt('ggggggggggggggg') #== 'g'
# p crunch_alt('a') #== 'a'
# p crunch_alt('') #== ''

# Further Exploration
# using regex

def crunch_regex(string)
  string.gsub(/(.)\1+/, '\1')
end

p crunch_regex('ddaaiilllyy ddoouubbllee')