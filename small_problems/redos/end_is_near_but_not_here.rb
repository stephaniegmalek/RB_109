=begin
----- Problem -----
input: string
output: string 
        - next to last word in argument
rules:
- words are any sequence of non-blank characters
- assume input will always contain at least 2 words

----- Examples -----
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

----- Data Structure -----
strings, arrays

----- Algorithm -----
split string into words, return second to last one
=end

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'