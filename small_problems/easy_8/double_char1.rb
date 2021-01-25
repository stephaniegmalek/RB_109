# ----- Problem -----
# input: string
# output: new string with argument values but each char doubled

# rules:
#       Implicit:
#       - every char is doubled including spaces, punctuation

# ----- Examples -----
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''
# repeater('Launch School!') == "LLaauunncchh  SScchhooooll!!"

# ----- Data Structure -----
# strings, array of characters

# ----- Algorithm -----
# initialize variable to contain result
# iterate thru each character of argument
# - double each char and add to result

# ----- Code -----
def repeater(string)
  doubled = ''
  string.chars do |char|
    doubled << char << char
  end
  doubled
end

p repeater('Hello')
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''
p repeater('Launch School!') #== "LLaauunncchh  SScchhooooll!!"