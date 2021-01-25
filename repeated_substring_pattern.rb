=begin
----- Problem -----
Given a non-empty string check if it can be constructed by taking a substring of it
and appending multiple copies of the substring together. You may assume the given 
string consists of lowercase English letters only. 

Example 1:
Input: 'abab'
Output: True
Explanation: 'It's the substring 'ab' twice.

Example 2:
Input: 'aba'
Output: False

---
input: string
output: boolean -> true or false

rules:
      Explicit:
      - output is true is argument string can be constructed by taking a substring 
        of it and appending multiple copies of the substring together
      - argument is non-empty
      - argument consists of lower case letters only
      Implicit:
      - substring doesn't have to be a particular length/size -min 2 letters
      
----- Examples -----
repeated_substring_pattern('abab') #== true
repeated_substring_pattern('aba') #== false
repeated_substring_pattern('aabaaba') #== false
repeated_substring_pattern('abaabaabaaba') #== true
repeated_substring_pattern('abcabcabcabcabc') #== true

----- Data Structure -----
strings, substrings 

----- Algorithm -----
- find all substrings
  - start with all substrings that begin with first letter 
    - add substrings with length of 2, 3, 4, etc up to half string length if 
      substring length is factor of the string
  
- check if substring goes into argument evenly
  - iterate thru list of substrings
    - remove each matching substring from argument, if result is empty string true
=end

def substrings(string)
  list = []
  1.upto(string.length / 2) do |substring_length|
    list << string[0, substring_length] if string.size % substring_length == 0
  end
  list
end

p substrings('abab')

def repeated_substring_pattern(string)
  substrings = substrings(string)
  
  substrings.each do |substring|
    return true if string.gsub(substring, '').empty?
  end
  false
end

p repeated_substring_pattern('abab') #== true
p repeated_substring_pattern('aba') #== false
p repeated_substring_pattern('aabaaba') #== false
p repeated_substring_pattern('abaababaab') #== true
p repeated_substring_pattern('abcabcabcabcabc') #== true

# Alternative
def repeating_substring(string)
  center = string.length / 2
  left = string[0, center]
  right = string[center..-1]
  left == right
  
end

# p repeating_substring('abab')
# p repeating_substring('aba')
# p repeating_substring('aabaaba')
# p repeating_substring('abaababaab')
# p repeating_substring('abcabcabcabc')