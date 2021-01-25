# ----- Problem -----
# input: string containing one or more words
# output: given string with words greater than 5 chars reversed
# rules: 
#       Explicit Requirements:
#       - each string only consists of letters and spaces
#       - spaces should be only included when more than one word is present
# mental model:
# Look at each word, if word has more than 5 chars reverse char order, do for all
# words in given string

# ----- Examples -----
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# ----- Data Structure -----
# strings, array of substrings

# ----- Algorithm -----
# split string into collection of substrings

# Iterate through collection of substrings
#   If substring has five or more characters
#     reverse the order of characters
#   else
#     leave substring as is

# Rejoin collection of substrings back into one string

# ----- Code -----
def reverse_words(string)
  reversed = string.split.each do |substring|
    if substring.size >= 5
      substring.reverse!
    else
      substring
    end
  end
  reversed.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS