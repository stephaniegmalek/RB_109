=begin
----- Problem -----
input: string
        - word
output: boolean
        - true if word passed in as an argument can be spelled from set of blocks
        - false otherwise
rules:
      Explicit:
      - set of blocks has 2 letter per block
      - each block can only be used once
        - only one letter per block can be used in a word
      Implicit:
      - letter case doesn't matter
      - words with double letters will false

----- Examples -----
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
block_word?('launch') == false
block_word?('TODAY') == true
block_word?('Word') == true

----- Data Structure -----
blocks as array of strings, string

----- Algorithm -----
iterate thru blocks
- count how many times block is used
- if count > 1 return false
  
=end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(string)
  BLOCKS.all? do |block|
    string.upcase.count(block) <= 1
  end
end


p block_word?('BAAAAAAA')
p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
p block_word?('launch') #== false
p block_word?('TODAY') #== true
p block_word?('Word') #== true


# ----- First Attempt -----
# initialize variable to hold blocks needed
# iterate thru my input string by each char
# - check if char is included in blocks
#   - if yes, add block to blocks used

# compare the blocks used to the same group without duplicates

# BLOCKS = [
#   ["b", "o"], ["x", "k"], ["d", "q"], ["c", "p"], ["n", "a"], ["g", "t"],
#   ["r", "e"], ["f", "s"], ["j", "w"], ["h", "u"], ["v", "i"], ["l", "y"],
#   ["z", "m"]
# ]

# def block_word?(string)
#   blocks_used = []
#   string.downcase.chars.each do |char|
#     BLOCKS.each do |block|
#       if block.include?(char)
#         blocks_used << block
#       end
#     end
#   end
#   blocks_used.uniq == blocks_used
# end