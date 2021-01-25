# ----- Problem -----
# input: string with one or more space separated words
# output: hash with number of words of different sizes

# rules:
#   Explicit:
#   - words consist of any string of alpha characters 
#   - non-letters do not count when determining word size ex: "it's" is 3 not 4
#   Implicit:
#   - return hash: the key is the letter count and the value is the word count

# ----- Examples -----
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

# ----- Data Structure -----
# strings, array of substrings, hash

# ----- Algorithm -----
# 1. Create empty counter hash with default value 0
# 2. Split input string into array of words/substrings
# 3. Clean up substrings and remove non alpha chars
# 4. Iterate through array of substrings
#      - add length to counter hash with value of 1
# 5. Return counter hash

# ----- Code -----
def cleanup(string)
  string.gsub(/[^a-zA-Z]/, "")
end

def word_sizes(words)
  counter = Hash.new(0)
  
  words.split.each do |word|
    cleaned = cleanup(word)
    counter[cleaned.length] += 1
  end
  counter
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')