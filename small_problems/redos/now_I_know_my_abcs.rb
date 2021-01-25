=begin
----- Problem -----
input: word, string
output: boolean
        - true if argument can be spelled from set of blocks
        - false otherwise
rules:
- each block can only be used once
- uppercase / lowercase doesn't matter 

----- Examples -----
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

----- Data Structure -----
strings, booleans, array

----- Algorithm -----
initalize block variable (constant) and assign array of strings
iterate thru each block
- check if block occurs more than once in argument
  - if does return false
otherwise true
=end
BLOCKS = %w( bo xk dq cp na gt re fs jw hu vi ly zm )

def block_word?(string)
  string = string.downcase
  BLOCKS.each do |block|
    return false if string.count(block) > 1
  end
  true
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true