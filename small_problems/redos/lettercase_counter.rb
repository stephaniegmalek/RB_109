=begin
----- Problem -----
input: string
output: hash
        - 3 entries: number of chars in string that are lowercase, number of chars
          in string that are uppercase, and num of chars that are neither
rules:
- if string is empty all entires 0

----- Examples -----
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

----- Data Structure -----
strings, hash

----- Algorithm -----
initialize hash variable
add lowercase key to hash
- count lowercase letters
add uppercase key to hash
- count upercase letters
find size of string and subtract lowercase and uppercase from it
- add as neither
=end

def letter_case_count(string)
  counter = {}
  counter[:lowercase] = string.count('a-z')
  counter[:uppercase] = string.count('A-Z')
  counter[:neither] = string.count('^a-zA-Z')
  counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }