=begin
----- Problem -----
input: string
output: boolean value 
        - true if all parentheses in the string are properly balanced
        - false if otherwise
rules: 
      Explicit: 
      - a balanced pair must each start with '(' not ')'
        - e.g. ')(' is not balanced 
      Implicit:
      - parentheses can be nested
        - e.g. '((...)..(..)) 
      - if no parentheses return true 

----- Examples -----
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
0

balanced?('((What)) (is this))?') == false
-1
balanced?('Hey!') == true
0
balanced?(')Hey!(') == false

balanced?('What ((is))) up(') == false

----- Data Structure -----
string, array, integers 

----- Algorithm -----
initialize a count variable 
iterate thru each char of string
- if i match to opening parentheses '(', count increments by 1
- if I match to closing parentheses ')', count increments by -1
  - if count goes below 0, return false
if count not 0 return false

=end

# def balanced?(string)
#   count = 0
#   string.chars.each do |char|
#     count += 1 if char == '('
#     count -= 1 if char == ')'
#     return false if count < 0
#   end
#   count.zero?
# end


# p balanced?('What (is) this?') #== true
# p balanced?('What is) this?') #== false
# p balanced?('What (is this?') #== false
# p balanced?('((What) (is this))?') #== true
# p balanced?('((What)) (is this))?') #== false
# p balanced?('Hey!') #== true
# p balanced?(')Hey!(') #== false
# p balanced?('What ((is))) up(') #== false


# ----- Further Exploration -----
# handle [ ], { }, ' ' and " "

def balanced_further?(string)
  pairs = %w( () [] {} '' "" )
  counts = Hash.new(0)
  
  pairs.each do |pair|
    string.chars.each do |char|
      counts[pair] += 1 if char == pair[0]
      counts[pair] -= 1 if char == pair[1]
      break if counts[pair] < 0
    end
  end
  counts.values.all?(&:zero?)
end

p balanced_further?("What '(is)' this?") #== true
p balanced_further?('What is] this?') #== false
p balanced_further?('What {is this?') #== false
p balanced_further?('((What) (is this))?') #== true
p balanced_further?('((What)} (is this))?') #== false
p balanced_further?('Hey!') #== true
p balanced_further?(')Hey!(') #== false
p balanced_further?('What {[(is)]) up(') #== false
p balanced_further?("What up {['']} my earth")
