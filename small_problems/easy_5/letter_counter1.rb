# ----- Problem -----
# input: string with one or more space separated words
# output: hash with number of words of different sizes

# rules:
#   Explicit:
#   - words consist of any string of characters that do not include a space
#   Implicit:
#   - return hash: the key is the letter count and the value is the word count


# ----- Examples -----
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# ----- Data Structure -----
# hash, strings, array of substrings

# ----- Algorithm -----
# 1. Create empty counter hash
# 2. Split input string into array of words/substrings 
# 3. Iterate through array of substrings 
#    - Find length of substring
#      IF counter hash already contains a key with length
#      - add 1 to it's value
#      IF not
#      - add length to counter hash with value of 1
# 4. Return counter hash

# ----- Code -----
def word_sizes(words)
  counter = Hash.new(0)
  words.split.each do |word|
    counter[word.length] += 1
  end
  counter
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')