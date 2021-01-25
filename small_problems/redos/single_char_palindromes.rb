=begin
You will be given a string and your task is to check if it is possible to convert that string
into a palindrome by removing a single character. If the string is already a palindrome
return 'OK'. If it is not, and we can convert it to a palindrome by removing one char 
then return 'remove one' otherwise return 'not possible'. The order of the characters
should not be changed. 

For example:
solve("abba") = "OK". -- This is a palindrome
solve("abbaa") = "remove one". -- remove the 'a' at the extreme right. 
solve("abbaab") = "not possible".

----- Problem -----
problem: checking if argument is a palindrome or if it can become one by removing
          a single character
input: string
output: string
        - "OK" -> argument string is palindrome
        - "remove one" -> if can convert to palindrome by removing 1 char 
        - "not possible" -> is not a palindrome and removing 1 char won't make it one
rules:
- palindrome -> reads the same forwards and backwards
- can not change order of characters 

----- Examples -----
p solve("abba") == "OK"
p solve("abbaa") == "remove one"
-> remove 'a' at end 
p solve("abbaab") == "not possible"
-> need to remove 'ab' at end
p solve("madmam") == "remove one"
-> remove 'm' at index 3
p solve("raydarm") == "not possible"
-> remove 'd' at index 3 and 'm' at index -1
p solve("hannah") == "OK"
-> is a palindrome

----- Data Structure -----
strings

----- Algorithm -----
is_palindrome? method
- compare input string to input string reversed

solve method
- return "OK" if string is_palindrome?
- iterate thru each index of string
  - initialize current_str variable and assign it result of removing current char of string
    - from 0 index to current index (but not including it) + from current index + 1 to end
  - test if current_str is_palindrome?
    - if yes, return "remove one"
 - return "not possible"   
=end

def is_palindrome?(string)
  string == string.reverse
end

def solve(string)
  return "OK" if is_palindrome?(string)
  string.chars.each_index do |idx|
    current_str = string[0...idx] + string[idx + 1..-1]
    return "remove one" if is_palindrome?(current_str)
  end
  "not possible"
end

p solve("abba") == "OK"
p solve("abbaa") #== "remove one"
# _bbaa -> 0 -> 1..-1
# a_baa -> 1..-1
# ab_aa -> 2
# abba_ -> 3

p solve("abbaab") #== "not possible"
p solve("madmam") #== "remove one"
p solve("raydarm") #== "not possible"
p solve("hannah") == "OK"