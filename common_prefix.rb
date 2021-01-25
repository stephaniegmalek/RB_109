=begin
----- Problem -----
Write a method to find the longest common prefix string amonst an array of strings.
If there is no common prefix, return an empty string "".

Example 1:
Input: ['flower', 'flow', 'flight']
Output: 'fl'

Example 2:
Input: ['dog', 'racecar', 'car']
Output: ''
Explaination: There is no common prefix among the input strings

All given inputs are in lowercase letters a-z. 

input: array of strings
output: string
        - the common prefix amongst argument strings
        - or empty string if no common prefix
rules:
      Explicit:
      - strings are in lowercase letters

----- Examples -----
common_prefix(['flower', 'flow', 'flight']) # == 'fl'
'fl'
'flo'
'flow'
'flowe'
'flower'
common_prefix(['dog', 'racecar', 'car']) # == ''
common_prefix(['interspecies', 'interstellar', 'interstate']) # == 'inters'
common_prefix(['throne', 'dungeon']) # == ''
common_prefix(['throne', 'throne']) # == 'throne'

----- Data Structure -----
array, strings

----- Algorithm -----
find all leading substrings in first word of argument 

iterate through leading substrings and keep one that meet criteria 
- check if substrings found / included in all remaining input strings

return largest leading substring or empty string
=end

def leading_substrings(string)
  list = []
  1.upto(string.length - 1) do |idx|
    list << string[0..idx]
  end
  list
end

def common_prefix(array)
  possible_prefixes = leading_substrings(array.shift)
  
  prefixes = possible_prefixes.select do |prefix|
    array.all? { |string| string.include?(prefix) }
  end
  
  return '' if prefixes.empty?
  prefixes.max
end

p common_prefix(['flower', 'flow', 'flight']) # == 'fl'
p common_prefix(['dog', 'racecar', 'car']) # == ''
p common_prefix(['interspecies', 'interstellar', 'interstate']) # == 'inters'
p common_prefix(['throne', 'dungeon']) # == ''
p common_prefix(['throne', 'throne']) # == 'throne'