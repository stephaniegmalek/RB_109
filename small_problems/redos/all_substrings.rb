=begin
----- Problem -----
input: string
output: array of all substrings
        - ordered by where in the string the substring begins e.g. index
          - all substrings starting at index 0 come first then all substrings
            starting at index 1 and so on 
          - substrings at given position should be ordered from shortest to 
            longest
rules:
- use `leading_substrings` method 
- shortest substring is 1 character
- longest substring is argument string

----- Example -----
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

----- Data Structure -----
strings, substrings, array 

----- Algorithm -----
initialize results variable - array
iterating thru string indexes
- find substrings that start with first character
- repeat with second character and so on
return results
=end

def leading_substrings(string)
  results = []
  1.upto(string.size) do |length|
    results << string[0, length]
  end
  results
end

def substrings(string)
  results = []
  0.upto(string.size - 1) do |start_idx|
    results.concat(leading_substrings(string[start_idx..-1]))
  end
  results
end

p substrings('abcde') 
#== ['a', 'ab', 'abc', 'abcd', 'abcde',
#    'b', 'bc', 'bcd', 'bcde',
#    'c', 'cd', 'cde',
#    'd', 'de',
#    'e'
#   ]