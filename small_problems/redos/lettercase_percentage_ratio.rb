=begin
----- Problem -----
input: string
output: hash
        - percentage of lowercase letters in argument
        - percentage of uppercase letters in argument
        - percentage of neither in argument
rules:
- assume the argument string will always contain at least one character

----- Examples -----
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

----- Data Structure -----
strings, integers/floats, hash

----- Algorithm -----
initialize total_letter variable and assign it length/size of string
initalize percentage_hash variable and assign it empty hash
count how many lowercase letters in string
- divide count by total_letter and multiple by 100
- add to percentage_hash
repeat for uppercase and neither
return hash
=end

def letter_percentages(string)
  percentage_hash = {}
  total_letter = string.size.to_f
  
  lowercase_count = string.chars.count { |char| char =~ /[a-z]/ }
  uppercase_count = string.chars.count { |char| char =~ /[A-Z]/ }
  neither_count = string.chars.count { |char| char =~ /[^a-z]/i }
  
  percentage_hash[:lowercase] = (lowercase_count / total_letter) * 100
  percentage_hash[:uppercase] = (uppercase_count / total_letter) * 100
  percentage_hash[:neither] = (neither_count / total_letter) * 100
  
  percentage_hash
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }