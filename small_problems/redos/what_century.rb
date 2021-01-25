=begin
----- Problem -----
input: integer that represents a year
output: string
        - begin with century number
        - end with `st`, `nd`, `rd`, or `th` as appropriate for number
rules:
      Explicit:
      - new centuries begin in years that end with 01
        e.g. 1901 - 2000 comprise the 20th century

----- Examples -----
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

----- Data Structure -----
integers, strings

----- Algorithm -----
Determine century number
- divide year by 100 and add 1
- unless remainder of year divided by 100 is 0

Determine ending
- if century ending is 11, 12, 13 ending is 'th'
- if century ending is 1 ending is 'st'
- if century ending is 2 ending is 'nd'
- if century ending is 3 ending is 'rd'
- else 'th'

=end

def century(year)
  century = if year % 10 == 0
    (year / 100)
  else
    (year / 100) + 1
  end
  suffix = century_ending(century)
  century.to_s + suffix
end

def century_ending(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10
  
  case last_digit
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else        'th'
  end
end


p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'
