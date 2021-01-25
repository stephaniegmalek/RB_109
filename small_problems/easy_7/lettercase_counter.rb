# ----- Problem -----
# input: string
# output: hash
#        - contains 3 entries: 
#           1. number of characters in string that are lowercase
#           2. number of characters in string that are uppercase
#           3. number of characters in string that are neither

# rules:
#       Implicit:
#       - numbers count as neither
#       - if input string is empty, return hash with values of 0 for each entry

# ----- Examples -----
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# ----- Data Structure -----
# array, strings, hashes

# ----- Algorithm -----
# mental model:
# - look at each character, if char is uppercase letter add count to uppercase entry,
#   if char lowercase letter add count to lowercase entry, otherwise add count to neither

# create count hash with key entries values set to 0
# convert string to array of characters and iterate thru each one
# - if char is lowercase, increment lowercase value by 1
# - if char is uppercase, incrememnt uppercase value by 1
# - if char is neither, incrememnt neither by 1
# return count hash

# ----- Code -----
def letter_case_count(string)
  count = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if char.match?(/[a-z]/)
      count[:lowercase] += 1
    elsif char.match?(/[A-Z]/)
      count[:uppercase] += 1
    else
      count[:neither] += 1
    end
  end
  count
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')

# Second Solution
def letter_case_count_2(string)
  count = {}
  characters = string.chars
  count[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  count[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  count[:neither]   = characters.count { |char| char =~ /[^a-zA-Z]/ }
  count
end

p letter_case_count_2('abCdef 123')