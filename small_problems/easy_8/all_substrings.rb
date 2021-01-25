# ----- Problem -----
# input: a string
# output: list of all substrings
#       - an array of strings
#       - ordered by where in the string the substring begins
#         - all substrings that start at position 0 should come first, then all
#           substrings that start at position 1 and so on
#       - when multiple substrings occur at a position, order the substrings from
#         shortest to longest

# rules:
#       Explicit:
#       - may and should use `leading_substrings` method 

# ----- Examples -----
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# ----- Data Structure -----
# strings, array 

# ----- Algorithm -----
# mental model:
# - starting with the first character of argrument string. The first substring
#   is from first to first char, the second substring is from the first char to 
#   the second char, so on and so forth until all substrings for first char. Now
#   repeat with second char of argument 

# initialize variable to hold results
# iterate thru string
# - get all substrings for char starting at first position
# - repeat for char at each position


# ----- Code -----
def leading_substrings(string)
  list = []
  0.upto(string.length - 1) do |idx|
    list << string[0..idx]
  end
  list
end

def substrings(string)
  all_substring = []
  0.upto(string.length - 1) do |idx|
    all_substring.concat(leading_substrings(string[idx..-1]))
  end
  all_substring
end

p substrings('abcde')