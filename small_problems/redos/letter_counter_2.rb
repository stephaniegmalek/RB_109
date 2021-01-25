=begin
----- Problem -----
input: a string with one or more space separated words
output: hash 
        - keys are word sizes
        - values are how many words of that size in input
rules:
- a word consist of any string of characters that do not include a space or non-alpha
  characters
- if input is empty string, return an empty hash
- use previous exercise method `word_sizes` 

----- Examples -----
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

----- Data Structure -----
string, array, hash

----- Algorithm -----
initialize count hash
remove non-alpha chars
split string into words and iterate thru words
- add word size as key to hash
  - increment value otherwise value 1

return hash
=end

def word_sizes(string)
  word_count = Hash.new(0)
  string = string.gsub(/[^a-z ]/i, '')
  string.split.each do |word|
    word_count[word.size] += 1
  end
  word_count
end

# p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') #== {}

# LS solution

def word_sizes_alt(string)
  word_count = Hash.new(0)
  string.split.each do |word|
    clean = word.delete('^a-zA-Z')
    word_count[clean.size] += 1
  end
  word_count
end

p word_sizes_alt('Four score and seven.')
p word_sizes_alt('Hey diddle diddle, the cat and the fiddle!')
p word_sizes_alt("What's up doc?")
p word_sizes_alt('')