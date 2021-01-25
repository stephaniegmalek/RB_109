=begin
----- Problem ----
input: string
output: hash
        - 3 entries:
          1. percentage of lowercase characters in string
          2. percentage of uppercase characters in string
          3. percentage of characters that are neither in string 
rules:
      Explicit:
      - the string will always contain at least one character
      Implicit:
      - output will always be hash with 3 entries
      - output has keys are symbols and value is integer or float
      - spaces count as neither character

----- Examples -----
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
total chars = 10, lowercase = 5, uppercase = 1, neither = 4

letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
total chars = 8, lowercase = 3, uppercase = 3, neither = 2

letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
total chars = 3, lowercase = 0, uppercase = 0, neither = 3

----- Data Structure -----
strings, hash, integers, floats, array, regex 

----- Algorithm -----
initialize percentages hash with 3 entires
initialize counts hash with 3 entires
initialize total number of characters in input string variable
initialize characters variable with all input string characters
count number of lowercase letters and add to counts hash
count number of uppercase letters and add to counts hash
count number of neither character and add to counts hash

calculate each percentage and add to percentage hash
- divided each count by total and multiple by 100

=end

def letter_percentages(string)
  percentages = { lowercase: 0, uppercase: 0, neither: 0 }
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  total = string.length
  characters = string.chars
  
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^a-zA-Z]/}
  
  percentages[:lowercase] = ((counts[:lowercase] / total.to_f) * 100).round(2)
  percentages[:uppercase] = ((counts[:uppercase] / total.to_f) * 100).round(2)
  percentages[:neither]   = ((counts[:neither] / total.to_f) * 100).round(2)
  
  percentages
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
# total chars = 10, lowercase = 5, uppercase = 1, neither = 4

p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# total chars = 8, lowercase = 3, uppercase = 3, neither = 2

p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }
# total chars = 3, lowercase = 0, uppercase = 0, neither = 3

p letter_percentages('abcdefGHI')

=begin
----- First Attempt -----
save total number of characters in input string
iterate thru string character by character
- if char is lowercase, add 1 to lowercase count
- if char is uppercase, add 1 to lowercase count
- else, add 1 to neither count

calculate each percentage and add to result hash

def letter_percentages(string)
  percentages = {}
  total_chars = string.length
  lowercase_count = 0.0
  uppercase_count = 0.0
  neither_count = 0.0
  
  string.chars.each do |char|
    if char =~ /[a-z]/
      lowercase_count += 1
    elsif char =~ /[A-Z]/
      uppercase_count += 1
    else
      neither_count += 1
    end
  end
  
  percentages[:lowercase] = (lowercase_count / total_chars) * 100
  percentages[:uppercase] = (uppercase_count / total_chars) * 100
  percentages[:neither] = (neither_count / total_chars) * 100
  percentages
end
=end