=begin 
----- Problem -----
input: a string with one or more space separated words
output: hash 
        - keys are word sizes
        - values are how many words of that size in input
rules:
- a word consist of any string of characters that do not include a space. 
- if input is empty string, return an empty hash

----- Examples -----
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

----- Data Structure -----
strings, hash, array

----- Algorithm -----
initialize count hash 
split string into words
iterate thru words
- get word size
- add word size as key to hash
  - if already key increment value otherwise value 1

return hash
=end

def word_sizes(string)
  word_count = Hash.new(0)
  string.split.each do |word|
    word_count[word.size] += 1
  end
  word_count
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}