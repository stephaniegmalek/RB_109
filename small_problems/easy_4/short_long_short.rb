# ----- Problem -----
# input: 2 strings
# output: 1 string
#   - the result of concatenating the shorter string, the longer string and the shorter string

# rules:
#     Explicit:
#     - the 2 input strings are different lengths

# ----- Examples -----
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# ----- Data Structure -----
# strings

# ----- Algorithm -----
# compare string 1 length to string 2 length
#   - if string 1 shorter than string 2
#     - return string 1 + string 2 + string 1
#   - else
#     - return string 2 + string 1 + string 2

# ----- Code -----
def short_long_short(str1, str2)
  if str1.length < str2.length
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"