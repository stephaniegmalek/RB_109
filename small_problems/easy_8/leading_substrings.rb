# ----- Problem -----
# input: string
# output: array of substrings
#       - substrings should start at the beginning of the original string

# rules:
#       Explicit: 
#       - the return value / output should be arranged in order from shortest
#         to longest substring

#       Implicit:
#       - number of substrings in output array equal to size of input string

#       Questions:
#       - empty string?
#       - always one word? no sapces?

# ----- Examples -----
# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
# leading_substrings('smile') == ['s', 'sm', 'smi', 'smil', 'smile']

# ----- Data Structure -----
# strings, substrings, array

# ----- Algorithm -----
# mental model:
# - always starting with the first character of argrument string. The first substring
#   is 1 char long, the second is 2 chars, repeat until length of substring is same as 
#   argument string 

# create a list variable and assing an empty array to it
# create substring size variable andd assign it to 1
# while substring size is less than the string size
# - slice string starting at index 0 with length of substring size
# - add to list
# return list

# ----- Code -----
def leading_substrings(string)
  list = []
  string_size = 1
  while string_size <= string.size
    list << string[0, string_size]
    string_size += 1
  end
  list
end

p leading_substrings('abc') # == ['a', 'ab', 'abc']
p leading_substrings('a') # == ['a']
p leading_substrings('xyzzy') # == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
p leading_substrings('smile') # == ['s', 'sm', 'smi', 'smil', 'smile']