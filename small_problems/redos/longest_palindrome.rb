=begin
Find the length of the longest substring in the given string that is the same in 
reverse. 

As an example, it the input was "I like racecars that go fast", the substring 
(racecar) length would be 7.

If the length of the input string is 0, return value must be 0. 

Example:
'a' -> 1
'aab' -> 2
'abcde' -> 1
'zzbaabcd' -> 4
'' -> 0
----- Problem -----
input: string
output: integer 
        - length of the longest substring in argument string that is a palindrome
rules:
- if argument string is 0 in size, return value is 0
- a palindrome reads the same forwards and backwards
- a palindrome can be a single character

----- Examples -----
p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9

----- Data Structure -----
strings, integers, array? 

----- Algorithm -----
initalize largest variable and assign to 0
iterate thru each chars' position to find all possible substrings that begin 
with that position/index
- from current position/index to last index of string iterate to find substrings
  - initialize current_substring variable to substring from current position to end index
  - check if substring is palindrome
    - if yes, if substrings size greater than largest, reassign largest to size
return largest 
=end

def longest_palindrome(string)
  longest_substring = 0
  string.chars.each_index do |idx|
    idx.upto(string.size - 1) do |end_idx|
      current_substring = string[idx..end_idx]
      if current_substring == current_substring.reverse
        longest_substring = current_substring.size if current_substring.size > longest_substring
      end
    end
  end
  longest_substring
end

p longest_palindrome('a') #== 1
p longest_palindrome('aa') #== 2
p longest_palindrome('baa') #== 2
p longest_palindrome('aab') #== 2
p longest_palindrome('baabcd') #== 4
p longest_palindrome('baablkj12345432133d') #== 9
p longest_palindrome('')