# ----- Problem -----
# input: a string
#       - made up of two words or more
# output: a string
#       - the next to last word of the argument string

# rules:
#       Explicit:
#       - words are any sequence of non-blank characters
#       - argument string will always contain at least 2 words

# ----- Examples -----
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'
# penultimate('hello there world!') == 'there'
# penultimate('my name is what? my name is') == 'name'

# ----- Data Structure -----
# strings, array of substrings 

# ----- Algorithm -----
# mental model:
# - split argument string into words, return the next to last one

# split the argument string into words delimited by spaces
# return the second to last substring 

# ----- Code -----
def penultimate(string)
  string.split[-2]
end

 penultimate('last word') #== 'last'
 penultimate('Launch School is great!') #== 'is'
 penultimate('hello there world!') #== 'there'
 penultimate('my name is what? my name is') #== 'name'

# Further Exploration
def middle_word(string)
  word_array = string.split
  middle = (word_array.size) / 2
  if word_array.size.odd?
    word_array[middle]
  else
    word_array[middle - 1] + ' ' + word_array[middle]
  end
end

p middle_word('lauch school is great!')
p middle_word('hello there world')
p middle_word('my name is what? my name is')
p middle_word('bob')
p middle_word("hi there")