# ----- Problem -----
# write a method that takes a string, and returns a boolean indicating whetheer
# the string has a balanced set of parentheses

# input: string
# output: boolean
#         - true if balanced set of parentheses -> '( )'
#         - false if otherwise

# rules:
#       Implicit:
#       - only "()" is balanced

# ----- Examples -----
# balanced?("hi") # == 
# balanced?("(hi)") # == true
# balanced?("(hi") # == false
# balanced?(")hi(") # == false

# ----- Data Structure -----
# strings 

# ----- Algorithm -----
# mental model:
# - if the number of opening parenteses is the same as closing, it is balanced

# find count of "(" and compare to count of ")"

# ----- Code -----
def balanced?(string)
  string.count("(") == string.count(")")
end

balanced?("(hi)")
balanced?("(hi")

# Further Exploration
# enforce order of the parentheses

# mental model:
# - if we find an opening parentheses add 1 to counter, if find a closing parentheses
#   subtract 1 from counter. If counter goes below 0, not balanced, if it counter ends
#   at 0 its balanced

# create counter variable and assign to 0
# iterate thru each character of string. 
# - if '(' add 1 to counter
# - if ')' add -1 to counter
# if counter < 0 string isn't balanced
# if counter is 0 at the end it is balanced

def truly_balanced?(string)
  counter = 0
  string.chars do |char|
    counter += 1 if char =~ /\(/
    counter -= 1 if char =~ /\)/
    return false if counter < 0
  end
  counter == 0
end

p truly_balanced?(")hi(")
p truly_balanced?("(((hi)))")
p truly_balanced?("(hi))")
p truly_balanced?("((hi)")
p truly_balanced?("((hi)) )(")