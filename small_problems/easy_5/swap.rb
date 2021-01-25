# ----- Problem -----
# input: string of words separated by spaces
# output: new string of words in which first and last letters of every word are swapped

# rules:
#   Explicit:
#   - every word contains at least 1 letter
#   - input will always contain at least 1 word 
#   - input only contains words and spaces
#   Implicit:
#   - case stays the same, if uppercased it stays uppercase or if lowercase stays
#     lowercase

# ----- Examples -----
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# ----- Data Structure -----
# strings, arrays of substrings, indexed assignment

# ----- Algorithm -----
# 1. Create empty array called result
# 2. Iterate through array of substrings
#    - for each substring/word reassign the first char to the last and vice versa
# 3. Combine array of substrings into one string

# ----- Code -----
def swap_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  swapped = string.split.map do |substring|
              swap_characters(substring)
            end
  swapped.join(" ")
end

 p swap('Oh what a wonderful day it is')
  p swap('Abcde') # == 'ebcdA'
  p swap('a') # == 'a'