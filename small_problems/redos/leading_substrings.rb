=begin
----- Problem -----
input: string
output: array of strings
        - all substrings that start at the beginning of original string
        - arranged in order from shortest to longest substring
rules:
- shortest substring is 1 character
- longest substring is entire original string argument

----- Examples -----
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

----- Data Structure -----
strings, substrings, array

----- Algorithm -----
initialize results variable 
initialize length variable
loop
- get substring whose size is from 0 to length 
- add to results
return results
=end

def leading_substrings(string)
  results = []
  length = 1
  while length <= string.size
    results << string[0, length]
    length += 1
  end
  results
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']