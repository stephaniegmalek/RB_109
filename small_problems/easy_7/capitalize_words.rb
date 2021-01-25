# ----- Problem -----
# input: string
# output: new string
#         - contains original value of the argument with the first character of 
#           every word capitalized and all other letters lowercase

# rules:
#       Explicit:
#       - assume words are any sequence of non-blank characters

#       Implicit:
#       - if character is in middle of word and capitalized, when returned should
#         be lowercase
#       - if character is not the first character won't be capitalized

# ----- Examples -----
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# ----- Data Structure -----
# strings, array of substrings

# ----- Algorithm -----
# mental model:
# - separate argument into individual words, capitalize the first character of each
#   word and make remaining characters lowercase. Recombine words into string

# create capitalized variable and assign it to empty array
# split argument string into array of substrings
# iterate thru array of substrings, for each substring 
# - capitalize each word 
# join array assigned to capitalized together

# ----- Code -----
def word_cap(string)
  capitalized = string.split.map do |substring| # string.split.map(&:capitalize).join(' ')
    substring.capitalize
  end
  capitalized.join(' ')
end

 word_cap('four score and seven')
 word_cap('the javaScript language')
 word_cap('this is a "quoted" word')

# Further Exploration
def word_cap_2(string)
  result = string.split.map do |substring|
    substring[0].upcase + substring[1..-1].downcase
  end
  result.join(' ')
end

word_cap_2('four score and seven')

def word_cap_3(string)
  string = string.downcase
  string.gsub(/\s\w|^\w/) { |char| char.upcase }
end

p word_cap_3('four score and seven')
p word_cap_3('the javaScript language')
p word_cap_3('this is a "quoted" word')