=begin
Write function scramble(str1, str2) that returns true if a portion of str1 characters
can be rearranged to match str2, otherwise return false. 

For example: 
str1 is 'rkqodlw' and str2 is 'world' - the output should return true
str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' - should return true 
str1 is 'katas' and str2 is 'steak' - should return false

----- Problem -----
input: 2 strings
output: boolean
        - true if a portion of str1 characters can be rearranged to match str2
        - false if they cannot
rules:
- not all characters of str1 need to be used 
- number of characters needs to match 
- capitalization? 

----- Examples -----
scramble('javasss', 'jjss') == false
scramble('rkqodlw', 'world') == true
scramble('cedewaraaossoqqyt', 'codewars') == true
scramble('katas', 'steak') == false
scramble('scriptjava', 'javascript') == true
scramble('scriptingjava', 'javascript') == true

----- Data Structure -----
strings,

----- Algorithm -----
make list of which characters are in first string and how many times occur
- initalize chars_count to new Hash with default of 0
- iterate thru each char of str1
  - add each char to str1_char_count as key and increment value by 1 each time 
    char occurs
- return char_count

compare list to second string by iterating thru str2
- if first string is missing character return false
- if first string character count not at least same as second string return false

--Alt--
iterate thru str2 chars
- return false if:
  - str1 doesn't include char
  - str1 doesn't have at least same number of char as str2
otherwise return true
=end
def get_char_count(str)
  chars_count = Hash.new(0)
  str.chars.each do |char|
    chars_count[char] += 1
  end
  chars_count
end

# p get_char_count('rkqodlw')

def scramble(str1, str2)
  str1_char_count = get_char_count(str1)
  
  str2.chars.each do |char|
    return false unless str1_char_count.key?(char) && str1_char_count[char] >= str2.count(char)
  end
  true
end

def scramble_alt(str1, str2)
  str2.chars.each do |char|
    return false unless str1.include?(char) && str1.count(char) >= str2.count(char)
  end
  true
end

p scramble_alt('javasss', 'jjss') == false
p scramble_alt('rkqodlw', 'world') == true
p scramble_alt('cedewaraaossoqqyt', 'codewars') == true
p scramble_alt('katas', 'steak') == false
p scramble_alt('scriptjava', 'javascript') == true
p scramble_alt('scriptingjava', 'javascript') == true